import marshal
import sys
from _codecs import utf_8_decode, utf_8_encode
from _frozen_importlib import _call_with_frames_removed, spec_from_loader, BuiltinImporter
from _frozen_importlib_external import _os, _path_isfile, path_sep
from _io import FileIO

import __res as __resource

env_entry_point = b'Y_PYTHON_ENTRY_POINT'
env_source_root = b'Y_PYTHON_SOURCE_ROOT'
executable = sys.executable or 'Y_PYTHON'
path_sep = utf_8_encode(path_sep)[0]
sys.modules['run_import_hook'] = __resource

# This is the prefix in contrib/tools/python3/src/Lib/ya.make.
py_prefix = b'py/'
py_prefix_len = len(py_prefix)

Y_PYTHON_SOURCE_ROOT = _os.environ.get(env_source_root)


def _print(*xs):
    """
    This is helpful for debugging, since automatic bytes to str conversion is
    not available yet.  It is also possible to debug with GDB by breaking on
    __Pyx_AddTraceback (with Python GDB pretty printers enabled).
    """
    parts = []
    for s in xs:
        if isinstance(s, bytes):
            s = utf_8_decode(s)[0]
        if not isinstance(s, str):
            s = str(s)
        parts.append(s)
    sys.stderr.write(' '.join(parts) + '\n')


def file_bytes(path):
    # 'open' is not avaiable yet.
    with FileIO(path, 'r') as f:
        return f.read()


def iter_keys(prefix):
    l = len(prefix)
    for idx in range(__resource.count()):
        key = __resource.key_by_index(idx)
        if key.startswith(prefix):
            yield key, key[l:]


def iter_py_modules(with_keys=False):
    for key, path in iter_keys(b'resfs/file/' + py_prefix):
        if path.endswith(b'.py'):  # It may also end with '.pyc'.
            mod = utf_8_decode(path[:-3].replace(b'/', b'.'))[0]
            if with_keys:
                yield key, mod
            else:
                yield mod


def iter_prefixes(s):
    i = s.find('.')
    while i >= 0:
        yield s[:i]
        i = s.find('.', i + 1)


def resfs_resolve(path):
    """
    Return the absolute path of a root-relative path if it exists.
    """
    if Y_PYTHON_SOURCE_ROOT:
        if not path.startswith(Y_PYTHON_SOURCE_ROOT):
            path = path_sep.join((Y_PYTHON_SOURCE_ROOT, path))
        if _path_isfile(path):
            return path


def resfs_src(key, resfs_file=False):
    """
    Return the root-relative file path of a resource key.
    """
    if resfs_file:
        key = b'resfs/file/' + key
    return __resource.find(b'resfs/src/' + key)


def resfs_read(path, builtin=None):
    """
    Return the bytes of the resource file at path, or None.
    If builtin is True, do not look for it on the filesystem.
    If builtin is False, do not look in the builtin resources.
    """
    if builtin is not True:
        abspath = resfs_resolve(resfs_src(path, resfs_file=True))
        if abspath:
            return file_bytes(abspath)

    if builtin is not False:
        return __resource.find(b'resfs/file/' + path)


def resfs_files():
    """
    List builtin resource file paths.
    """
    return [path for _, path in iter_keys(b'resfs/file/')]


def mod_path(mod):
    """
    Return the resfs path to the source code of the module with the given name.
    """
    return py_prefix + utf_8_encode(mod.replace('.', '/') + '.py')[0]


class ResourceImporter(object):

    """ A meta_path importer that loads code from built-in resources.
    """

    def __init__(self):
        self.memory = set(iter_py_modules())  # Set of importable module names.
        self.source_map = {}                  # Map from file names to module names.
        self._source_name = {}                # Map from original to altered module names.
        self._package_prefix = ''

        for p in list(self.memory) + list(sys.builtin_module_names):
            for pp in iter_prefixes(p):
                k = pp + '.__init__'
                if k not in self.memory:
                    self.memory.add(k)

    def for_package(self, name):
        import copy
        importer = copy.copy(self)
        importer._package_prefix = name + '.'
        return importer

    def find_spec(self, fullname, path=None, target=None):
        try:
            is_package = self.is_package(fullname)
        except ImportError:
            return None
        return spec_from_loader(fullname, self, is_package=is_package)

    def find_module(self, fullname, path=None):
        """For backward compatibility."""
        spec = self.find_spec(fullname, path)
        return spec.loader if spec is not None else None

    def create_module(self, spec):
        """Use default semantics for module creation."""

    def exec_module(self, module):
        code = self.get_code(module.__name__)
        module.__file__ = code.co_filename
        if self.is_package(module.__name__):
            module.__path__= [executable + '/' + module.__name__]
        # exec(code, module.__dict__)
        _call_with_frames_removed(exec, code, module.__dict__)

    # PEP-302 extension 1 of 3: data loader.
    def get_data(self, path):
        if isinstance(path, str):
            path = utf_8_encode(path)[0]
        abspath = resfs_resolve(path)
        if abspath:
            return file_bytes(abspath)
        data = resfs_read(path, builtin=True)
        if data is None:
            raise IOError(path)  # Y_PYTHON_ENTRY_POINT=:resource_files
        return data

    # PEP-302 extension 2 of 3: get __file__ without importing.
    def get_filename(self, fullname):
        modname = fullname
        if self.is_package(fullname):
            fullname += '.__init__'
        relpath = resfs_src(mod_path(fullname), resfs_file=True)
        if isinstance(relpath, bytes):
            relpath = utf_8_decode(relpath)[0]
        return relpath or modname

    # PEP-302 extension 3 of 3: packaging introspection.
    # Used by `linecache` (while printing tracebacks) unless module filename
    # exists on the filesystem.
    def get_source(self, fullname):
        fullname = self._source_name.get(fullname) or fullname
        if self.is_package(fullname):
            fullname += '.__init__'

        relpath = self.get_filename(fullname)
        if relpath:
            abspath = resfs_resolve(utf_8_encode(relpath)[0])
            if abspath:
                return utf_8_decode(file_bytes(abspath))[0]
        data = resfs_read(mod_path(fullname))
        return utf_8_decode(data)[0] if data else ''

    def get_code(self, fullname):
        modname = fullname
        if self.is_package(fullname):
            fullname += '.__init__'

        path = mod_path(fullname)
        relpath = resfs_src(path, resfs_file=True)
        if relpath:
            abspath = resfs_resolve(relpath)
            if abspath:
                data = file_bytes(abspath)
                return compile(data, utf_8_decode(abspath)[0], 'exec', dont_inherit=True)

        yapyc_path = path + b'.yapyc3'
        yapyc_data = resfs_read(yapyc_path, builtin=True)
        if yapyc_data:
            return marshal.loads(yapyc_data)
        else:
            py_data = resfs_read(path, builtin=True)
            if py_data:
                return compile(py_data, utf_8_decode(relpath)[0], 'exec', dont_inherit=True)
            else:
                # This covers packages with no __init__.py in resources.
                return compile('', modname, 'exec', dont_inherit=True)

    def is_package(self, fullname):
        if fullname in self.memory:
            return False

        if fullname + '.__init__' in self.memory:
            return True

        raise ImportError(fullname)

    # Extension for contrib/python/coverage.
    def file_source(self, filename):
        """
        Return the key of the module source by its resource path.
        """
        if not self.source_map:
            for key, mod in iter_py_modules(with_keys=True):
                path = self.get_filename(mod)
                self.source_map[path] = key

        if filename in self.source_map:
            return self.source_map[filename]

        filename = utf_8_encode(filename)[0]
        if resfs_read(filename, builtin=True) is not None:
            return b'resfs/file/' + filename

        return b''

    # Extension for pkgutil.iter_modules.
    def iter_modules(self, prefix=''):
        import re
        rx = re.compile(re.escape(self._package_prefix) + r'([^.]+)(\.__init__)?$')
        for p in self.memory:
            m = rx.match(p)
            if m:
                yield prefix + m.group(1), m.group(2) is not None


class BuiltinSubmoduleImporter(BuiltinImporter):
    @classmethod
    def find_spec(cls, fullname, path=None, target=None):
        if path is not None:
            return super().find_spec(fullname, None, target)
        else:
            return None


def excepthook(*args, **kws):
    # traceback module cannot be imported at module level, because interpreter
    # is not fully initialized yet

    import traceback

    return traceback.print_exception(*args, **kws)


sys.meta_path.insert(0, BuiltinSubmoduleImporter)

importer = ResourceImporter()
sys.meta_path.insert(0, importer)


def executable_path_hook(path):
    if path == executable:
        return importer

    if path.startswith(executable + '/'):
        return importer.for_package(path[len(executable) + 1:])

    raise ImportError(path)


if executable not in sys.path:
    sys.path.insert(0, executable)
sys.path_hooks.insert(0, executable_path_hook)
sys.path_importer_cache[executable] = importer

# Indicator that modules and resources are built-in rather than on the file system.
sys.is_standalone_binary = True
sys.frozen = True

# Set of names of importable modules.
sys.extra_modules = importer.memory

# Use custom implementation of traceback printer.
# Built-in printer (PyTraceBack_Print) does not support custom module loaders
sys.excepthook = excepthook
