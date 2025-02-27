MAKEFLAGS += --no-builtin-rules
.ONESHELL:
BUILD_ROOT = $(shell pwd)
SOURCE_ROOT = $(shell pwd)
PYTHON = $(shell which python)




all\
        ::\
        $(BUILD_ROOT)/catboost/libs/model_interface/libcatboostmodel.so.1\
        $(BUILD_ROOT)/catboost/libs/model_interface/libcatboostmodel.so.1.mf\
        $(BUILD_ROOT)/catboost/libs/model_interface/libcatboostmodel.so\

.PHONY : all

$(BUILD_ROOT)/catboost/libs/model_interface/libcatboostmodel.so.1.mf\
$(BUILD_ROOT)/catboost/libs/model_interface/libcatboostmodel.so\
        ::\
        $(BUILD_ROOT)/catboost/libs/model_interface/libcatboostmodel.so.1\

$(BUILD_ROOT)/catboost/libs/model_interface/libcatboostmodel.so.1\
        ::\
        $(BUILD_ROOT)/catboost/libs/cat_feature/libcatboost-libs-cat_feature.a\
        $(BUILD_ROOT)/catboost/libs/ctr_description/libcatboost-libs-ctr_description.a\
        $(BUILD_ROOT)/catboost/libs/data_types/libcatboost-libs-data_types.a\
        $(BUILD_ROOT)/catboost/libs/data_util/exists_checker.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/data_util/libcatboost-libs-data_util.a\
        $(BUILD_ROOT)/catboost/libs/data_util/line_data_reader.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/libcatboost-libs-helpers.a\
        $(BUILD_ROOT)/catboost/libs/index_range/libcatboost-libs-index_range.a\
        $(BUILD_ROOT)/catboost/libs/logging/libcatboost-libs-logging.a\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/model_import_interface.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/liblibs-model-thin.a\
        $(BUILD_ROOT)/catboost/libs/model_interface/c_api.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/libcatboost-libs-options.a\
        $(BUILD_ROOT)/contrib/libs/base64/avx2/liblibs-base64-avx2.a\
        $(BUILD_ROOT)/contrib/libs/base64/neon32/liblibs-base64-neon32.a\
        $(BUILD_ROOT)/contrib/libs/base64/neon64/liblibs-base64-neon64.a\
        $(BUILD_ROOT)/contrib/libs/base64/plain32/liblibs-base64-plain32.a\
        $(BUILD_ROOT)/contrib/libs/base64/plain64/liblibs-base64-plain64.a\
        $(BUILD_ROOT)/contrib/libs/base64/ssse3/liblibs-base64-ssse3.a\
        $(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a\
        $(BUILD_ROOT)/contrib/libs/crcutil/libcontrib-libs-crcutil.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a\
        $(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a\
        $(BUILD_ROOT)/contrib/libs/nayuki_md5/libcontrib-libs-nayuki_md5.a\
        $(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a\
        $(BUILD_ROOT)/library/binsaver/liblibrary-binsaver.a\
        $(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a\
        $(BUILD_ROOT)/library/containers/2d_array/liblibrary-containers-2d_array.a\
        $(BUILD_ROOT)/library/containers/dense_hash/liblibrary-containers-dense_hash.a\
        $(BUILD_ROOT)/library/containers/flat_hash/lib/libcontainers-flat_hash-lib.a\
        $(BUILD_ROOT)/library/containers/flat_hash/liblibrary-containers-flat_hash.a\
        $(BUILD_ROOT)/library/dbg_output/liblibrary-dbg_output.a\
        $(BUILD_ROOT)/library/digest/crc32c/liblibrary-digest-crc32c.a\
        $(BUILD_ROOT)/library/digest/md5/liblibrary-digest-md5.a\
        $(BUILD_ROOT)/library/fast_exp/liblibrary-fast_exp.a\
        $(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a\
        $(BUILD_ROOT)/library/grid_creator/liblibrary-grid_creator.a\
        $(BUILD_ROOT)/library/json/common/liblibrary-json-common.a\
        $(BUILD_ROOT)/library/json/fast_sax/liblibrary-json-fast_sax.a\
        $(BUILD_ROOT)/library/json/liblibrary-json.a\
        $(BUILD_ROOT)/library/json/writer/liblibrary-json-writer.a\
        $(BUILD_ROOT)/library/logger/global/liblibrary-logger-global.a\
        $(BUILD_ROOT)/library/logger/liblibrary-logger.a\
        $(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a\
        $(BUILD_ROOT)/library/object_factory/liblibrary-object_factory.a\
        $(BUILD_ROOT)/library/pop_count/liblibrary-pop_count.a\
        $(BUILD_ROOT)/library/string_utils/base64/liblibrary-string_utils-base64.a\
        $(BUILD_ROOT)/library/string_utils/relaxed_escaper/liblibrary-string_utils-relaxed_escaper.a\
        $(BUILD_ROOT)/library/svnversion/liblibrary-svnversion.a\
        $(BUILD_ROOT)/library/text_processing/dictionary/liblibrary-text_processing-dictionary.a\
        $(BUILD_ROOT)/library/threading/local_executor/liblibrary-threading-local_executor.a\
        $(BUILD_ROOT)/tools/enum_parser/enum_serialization_runtime/libtools-enum_parser-enum_serialization_runtime.a\
        $(BUILD_ROOT)/tools/fix_elf/fix_elf\
        $(BUILD_ROOT)/util/charset/libutil-charset.a\
        $(BUILD_ROOT)/util/libyutil.a\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/vcs_info.py\
        $(SOURCE_ROOT)/build/scripts/c_templates/svn_interface.c\
        $(SOURCE_ROOT)/build/scripts/link_dyn_lib.py\
        $(SOURCE_ROOT)/catboost/libs/model_interface/calcer.exports\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model_interface'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name catboostmodel -o catboost/libs/model_interface/libcatboostmodel.so.1.mf -t DLL -Ya,lics -Ya,peers contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a util/charset/libutil-charset.a contrib/libs/zlib/libcontrib-libs-zlib.a contrib/libs/double-conversion/libcontrib-libs-double-conversion.a util/libyutil.a catboost/libs/cat_feature/libcatboost-libs-cat_feature.a catboost/libs/index_range/libcatboost-libs-index_range.a library/containers/2d_array/liblibrary-containers-2d_array.a library/binsaver/liblibrary-binsaver.a library/containers/dense_hash/liblibrary-containers-dense_hash.a catboost/libs/data_types/libcatboost-libs-data_types.a library/object_factory/liblibrary-object_factory.a catboost/libs/data_util/libcatboost-libs-data_util.a tools/enum_parser/enum_serialization_runtime/libtools-enum_parser-enum_serialization_runtime.a library/logger/liblibrary-logger.a library/logger/global/liblibrary-logger-global.a catboost/libs/logging/libcatboost-libs-logging.a library/colorizer/liblibrary-colorizer.a library/dbg_output/liblibrary-dbg_output.a contrib/libs/crcutil/libcontrib-libs-crcutil.a library/digest/crc32c/liblibrary-digest-crc32c.a contrib/libs/nayuki_md5/libcontrib-libs-nayuki_md5.a contrib/libs/base64/avx2/liblibs-base64-avx2.a contrib/libs/base64/ssse3/liblibs-base64-ssse3.a contrib/libs/base64/neon32/liblibs-base64-neon32.a contrib/libs/base64/neon64/liblibs-base64-neon64.a contrib/libs/base64/plain32/liblibs-base64-plain32.a contrib/libs/base64/plain64/liblibs-base64-plain64.a library/string_utils/base64/liblibrary-string_utils-base64.a library/digest/md5/liblibrary-digest-md5.a library/malloc/api/liblibrary-malloc-api.a library/pop_count/liblibrary-pop_count.a library/threading/local_executor/liblibrary-threading-local_executor.a catboost/libs/helpers/libcatboost-libs-helpers.a catboost/libs/ctr_description/libcatboost-libs-ctr_description.a contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a library/json/common/liblibrary-json-common.a library/json/fast_sax/liblibrary-json-fast_sax.a library/json/writer/liblibrary-json-writer.a library/string_utils/relaxed_escaper/liblibrary-string_utils-relaxed_escaper.a library/json/liblibrary-json.a library/getopt/small/liblibrary-getopt-small.a library/grid_creator/liblibrary-grid_creator.a library/containers/flat_hash/lib/libcontainers-flat_hash-lib.a library/containers/flat_hash/liblibrary-containers-flat_hash.a library/text_processing/dictionary/liblibrary-text_processing-dictionary.a catboost/libs/options/libcatboost-libs-options.a library/fast_exp/liblibrary-fast_exp.a library/svnversion/liblibrary-svnversion.a catboost/libs/model/thin/liblibs-model-thin.a
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/vcs_info.py' '$(VCS)/vcs.json' '$(BUILD_ROOT)/catboost/libs/model_interface/__vcs_version__.c' '$(SOURCE_ROOT)/build/scripts/c_templates/svn_interface.c'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model_interface/__vcs_version__.c.pic.o' '$(BUILD_ROOT)/catboost/libs/model_interface/__vcs_version__.c' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16
	cd $(BUILD_ROOT) && '$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_dyn_lib.py' --target '$(BUILD_ROOT)/catboost/libs/model_interface/libcatboostmodel.so.1' --arch=LINUX --soname '$(BUILD_ROOT)/catboost/libs/model_interface/libcatboostmodel.so' --fix-elf '$(BUILD_ROOT)/tools/fix_elf/fix_elf' ${CXX} catboost/libs/data_util/line_data_reader.cpp.pic.o catboost/libs/data_util/exists_checker.cpp.pic.o catboost/libs/model/thin/__/model_import_interface.cpp.pic.o '$(BUILD_ROOT)/catboost/libs/model_interface/__vcs_version__.c.pic.o' '$(BUILD_ROOT)/catboost/libs/model_interface/c_api.cpp.pic.o' -o '$(BUILD_ROOT)/catboost/libs/model_interface/libcatboostmodel.so.1' -shared -Wl,-soname,libcatboostmodel.so.1 --target=x86_64-linux-gnu -Wl,--start-group contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a util/charset/libutil-charset.a contrib/libs/zlib/libcontrib-libs-zlib.a contrib/libs/double-conversion/libcontrib-libs-double-conversion.a util/libyutil.a catboost/libs/cat_feature/libcatboost-libs-cat_feature.a catboost/libs/index_range/libcatboost-libs-index_range.a library/containers/2d_array/liblibrary-containers-2d_array.a library/binsaver/liblibrary-binsaver.a library/containers/dense_hash/liblibrary-containers-dense_hash.a catboost/libs/data_types/libcatboost-libs-data_types.a library/object_factory/liblibrary-object_factory.a catboost/libs/data_util/libcatboost-libs-data_util.a tools/enum_parser/enum_serialization_runtime/libtools-enum_parser-enum_serialization_runtime.a library/logger/liblibrary-logger.a library/logger/global/liblibrary-logger-global.a catboost/libs/logging/libcatboost-libs-logging.a library/colorizer/liblibrary-colorizer.a library/dbg_output/liblibrary-dbg_output.a contrib/libs/crcutil/libcontrib-libs-crcutil.a library/digest/crc32c/liblibrary-digest-crc32c.a contrib/libs/nayuki_md5/libcontrib-libs-nayuki_md5.a contrib/libs/base64/avx2/liblibs-base64-avx2.a contrib/libs/base64/ssse3/liblibs-base64-ssse3.a contrib/libs/base64/neon32/liblibs-base64-neon32.a contrib/libs/base64/neon64/liblibs-base64-neon64.a contrib/libs/base64/plain32/liblibs-base64-plain32.a contrib/libs/base64/plain64/liblibs-base64-plain64.a library/string_utils/base64/liblibrary-string_utils-base64.a library/digest/md5/liblibrary-digest-md5.a library/malloc/api/liblibrary-malloc-api.a library/pop_count/liblibrary-pop_count.a library/threading/local_executor/liblibrary-threading-local_executor.a catboost/libs/helpers/libcatboost-libs-helpers.a catboost/libs/ctr_description/libcatboost-libs-ctr_description.a contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a library/json/common/liblibrary-json-common.a library/json/fast_sax/liblibrary-json-fast_sax.a library/json/writer/liblibrary-json-writer.a library/string_utils/relaxed_escaper/liblibrary-string_utils-relaxed_escaper.a library/json/liblibrary-json.a library/getopt/small/liblibrary-getopt-small.a library/grid_creator/liblibrary-grid_creator.a library/containers/flat_hash/lib/libcontainers-flat_hash-lib.a library/containers/flat_hash/liblibrary-containers-flat_hash.a library/text_processing/dictionary/liblibrary-text_processing-dictionary.a catboost/libs/options/libcatboost-libs-options.a library/fast_exp/liblibrary-fast_exp.a library/svnversion/liblibrary-svnversion.a catboost/libs/model/thin/liblibs-model-thin.a -Wl,--end-group '-Wl,--version-script=$(SOURCE_ROOT)/catboost/libs/model_interface/calcer.exports' -ldl -lrt -Wl,--no-as-needed -Wl,-z,notext -lpthread -lrt -ldl -nodefaultlibs -lpthread -lc -lm -s

$(BUILD_ROOT)/catboost/libs/cat_feature/libcatboost-libs-cat_feature.a.mf\
        ::\
        $(BUILD_ROOT)/catboost/libs/cat_feature/libcatboost-libs-cat_feature.a\

$(BUILD_ROOT)/catboost/libs/cat_feature/libcatboost-libs-cat_feature.a\
        ::\
        $(BUILD_ROOT)/catboost/libs/cat_feature/cat_feature.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/cat_feature'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name catboost-libs-cat_feature -o catboost/libs/cat_feature/libcatboost-libs-cat_feature.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/catboost/libs/cat_feature/libcatboost-libs-cat_feature.a' '$(BUILD_ROOT)/catboost/libs/cat_feature/cat_feature.cpp.pic.o'

$(BUILD_ROOT)/catboost/libs/cat_feature/cat_feature.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/cat_feature/cat_feature.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/cat_feature'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/cat_feature/cat_feature.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/cat_feature/cat_feature.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/ctr_description/libcatboost-libs-ctr_description.a.mf\
        ::\
        $(BUILD_ROOT)/catboost/libs/ctr_description/libcatboost-libs-ctr_description.a\

$(BUILD_ROOT)/catboost/libs/ctr_description/libcatboost-libs-ctr_description.a\
        ::\
        $(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.h_serialized.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/ctr_description'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name catboost-libs-ctr_description -o catboost/libs/ctr_description/libcatboost-libs-ctr_description.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/catboost/libs/ctr_description/libcatboost-libs-ctr_description.a' '$(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.h_serialized.cpp.pic.o'

$(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/ctr_description/ctr_type.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/ctr_description'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/ctr_description/ctr_type.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.h_serialized.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.h_serialized.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/ctr_description'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.h_serialized.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.h_serialized.cpp\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\
        $(SOURCE_ROOT)/catboost/libs/ctr_description/ctr_type.h\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/ctr_description'
	'$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' '$(SOURCE_ROOT)/catboost/libs/ctr_description/ctr_type.h' --include-path catboost/libs/ctr_description/ctr_type.h --output '$(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.h_serialized.cpp'

$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser.mf\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\

$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\
        ::\
        $(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a\
        $(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a\
        $(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a\
        $(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a\
        $(BUILD_ROOT)/library/cppparser/liblibrary-cppparser.a\
        $(BUILD_ROOT)/library/cpuid_check/cpu_id_check.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a\
        $(BUILD_ROOT)/library/lfalloc/liblibrary-lfalloc.a\
        $(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/main.cpp.pic.o\
        $(BUILD_ROOT)/tools/enum_parser/parse_enum/libtools-enum_parser-parse_enum.a\
        $(BUILD_ROOT)/util/charset/libutil-charset.a\
        $(BUILD_ROOT)/util/libyutil.a\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/vcs_info.py\
        $(SOURCE_ROOT)/build/scripts/c_templates/svn_interface.c\
        $(SOURCE_ROOT)/build/scripts/link_exe.py\

	mkdir -p '$(BUILD_ROOT)/tools/enum_parser/enum_parser'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name enum_parser -o tools/enum_parser/enum_parser/enum_parser.mf -t PROGRAM -Ya,lics -Ya,peers contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a util/charset/libutil-charset.a contrib/libs/zlib/libcontrib-libs-zlib.a contrib/libs/double-conversion/libcontrib-libs-double-conversion.a util/libyutil.a library/malloc/api/liblibrary-malloc-api.a library/lfalloc/liblibrary-lfalloc.a library/colorizer/liblibrary-colorizer.a library/getopt/small/liblibrary-getopt-small.a library/cppparser/liblibrary-cppparser.a tools/enum_parser/parse_enum/libtools-enum_parser-parse_enum.a
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/vcs_info.py' '$(VCS)/vcs.json' '$(BUILD_ROOT)/tools/enum_parser/enum_parser/__vcs_version__.c' '$(SOURCE_ROOT)/build/scripts/c_templates/svn_interface.c'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/tools/enum_parser/enum_parser/__vcs_version__.c.pic.o' '$(BUILD_ROOT)/tools/enum_parser/enum_parser/__vcs_version__.c' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16
	cd $(BUILD_ROOT) && '$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_exe.py' ${CXX} library/cpuid_check/cpu_id_check.cpp.pic.o '$(BUILD_ROOT)/tools/enum_parser/enum_parser/__vcs_version__.c.pic.o' '$(BUILD_ROOT)/tools/enum_parser/enum_parser/main.cpp.pic.o' -o '$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' -rdynamic --target=x86_64-linux-gnu -Wl,--start-group contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a util/charset/libutil-charset.a contrib/libs/zlib/libcontrib-libs-zlib.a contrib/libs/double-conversion/libcontrib-libs-double-conversion.a util/libyutil.a library/malloc/api/liblibrary-malloc-api.a library/lfalloc/liblibrary-lfalloc.a library/colorizer/liblibrary-colorizer.a library/getopt/small/liblibrary-getopt-small.a library/cppparser/liblibrary-cppparser.a tools/enum_parser/parse_enum/libtools-enum_parser-parse_enum.a -Wl,--end-group -ldl -lrt -Wl,--no-as-needed -lpthread -lrt -ldl -nodefaultlibs -lpthread -lc -lm

$(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a\

$(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/cppdemangle/demangle.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cppdemangle'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name contrib-libs-cppdemangle -o contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a.mf -t LIBRARY -Ya,lics MIT BSD -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a' '$(BUILD_ROOT)/contrib/libs/cppdemangle/demangle.cpp.pic.o'

$(BUILD_ROOT)/contrib/libs/cppdemangle/demangle.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cppdemangle/demangle.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cppdemangle'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cppdemangle/demangle.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cppdemangle/demangle.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a\

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/addtf3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/clzti2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/comparetf2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divdc3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divsc3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divtf3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divti3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divxc3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extenddftf2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extendsftf2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixdfti.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixsfti.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixtfsi.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixunsdfti.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatditf.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatsitf.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattidf.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattisf.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatunditf.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntidf.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntisf.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/gcc_personality_v0.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/int_util.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/modti3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muldc3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muloti4.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulsc3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/multf3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulxc3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/popcountdi2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/subtf3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfdf2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfsf2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivmodti4.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivti3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/umodti3.c.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name libs-cxxsupp-builtins -o contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a.mf -t LIBRARY -Ya,lics MIT BSD -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/addtf3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/clzti2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/comparetf2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divdc3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divsc3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divtf3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divti3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divxc3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extenddftf2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extendsftf2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixdfti.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixsfti.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixtfsi.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixunsdfti.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatditf.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatsitf.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattidf.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattisf.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatunditf.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntidf.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntisf.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/gcc_personality_v0.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/int_util.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/modti3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muldc3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muloti4.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulsc3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/multf3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulxc3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/popcountdi2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/subtf3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfdf2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfsf2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivmodti4.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivti3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/umodti3.c.pic.o'

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/addtf3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/addtf3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/addtf3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/addtf3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/clzti2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/clzti2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/clzti2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/clzti2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/comparetf2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/comparetf2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/comparetf2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/comparetf2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divdc3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divdc3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divdc3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divdc3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divsc3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divsc3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divsc3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divsc3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divtf3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divtf3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divtf3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divtf3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divti3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divti3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divti3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divti3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divxc3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divxc3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divxc3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divxc3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extenddftf2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/extenddftf2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extenddftf2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/extenddftf2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extendsftf2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/extendsftf2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extendsftf2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/extendsftf2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixdfti.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixdfti.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixdfti.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixdfti.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixsfti.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixsfti.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixsfti.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixsfti.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixtfsi.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixtfsi.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixtfsi.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixtfsi.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixunsdfti.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixunsdfti.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixunsdfti.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixunsdfti.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatditf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatditf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatditf.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatditf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatsitf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatsitf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatsitf.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatsitf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattidf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floattidf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattidf.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floattidf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattisf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floattisf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattisf.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floattisf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatunditf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatunditf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatunditf.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatunditf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntidf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatuntidf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntidf.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatuntidf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntisf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatuntisf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntisf.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatuntisf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/gcc_personality_v0.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/gcc_personality_v0.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/gcc_personality_v0.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/gcc_personality_v0.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/int_util.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/int_util.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/int_util.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/int_util.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/modti3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/modti3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/modti3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/modti3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muldc3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/muldc3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muldc3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/muldc3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muloti4.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/muloti4.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muloti4.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/muloti4.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulsc3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/mulsc3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulsc3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/mulsc3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/multf3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/multf3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/multf3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/multf3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulxc3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/mulxc3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulxc3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/mulxc3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/popcountdi2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/popcountdi2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/popcountdi2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/popcountdi2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/subtf3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/subtf3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/subtf3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/subtf3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfdf2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/trunctfdf2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfdf2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/trunctfdf2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfsf2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/trunctfsf2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfsf2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/trunctfsf2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivmodti4.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/udivmodti4.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivmodti4.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/udivmodti4.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivti3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/udivti3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivti3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/udivti3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/umodti3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/umodti3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/umodti3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/umodti3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a\

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/algorithm.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/any.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/bind.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/charconv.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/chrono.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/condition_variable.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/debug.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/exception.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/functional.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/future.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/hash.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/ios.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/iostream.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/locale.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/memory.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/mutex.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/new.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/optional.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/random.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/regex.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/shared_mutex.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/stdexcept.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/string.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/strstream.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/system_error.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/thread.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/typeinfo.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/utility.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/valarray.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/variant.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/vector.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name libs-cxxsupp-libcxx -o contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a.mf -t LIBRARY -Ya,lics APACHE -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/algorithm.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/any.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/bind.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/charconv.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/chrono.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/condition_variable.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/debug.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/exception.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/functional.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/future.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/hash.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/ios.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/iostream.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/locale.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/memory.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/mutex.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/optional.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/random.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/regex.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/shared_mutex.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/stdexcept.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/string.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/strstream.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/system_error.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/thread.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/typeinfo.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/utility.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/valarray.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/variant.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/vector.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/new.cpp.pic.o'

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/algorithm.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/algorithm.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/algorithm.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/algorithm.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/any.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/any.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/any.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/any.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/bind.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/bind.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/bind.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/bind.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/charconv.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/charconv.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/charconv.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/charconv.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/chrono.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/chrono.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/chrono.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/chrono.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/condition_variable.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/condition_variable.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/condition_variable.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/condition_variable.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/debug.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/debug.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/debug.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/debug.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/exception.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/exception.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/exception.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/exception.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/functional.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/functional.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/functional.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/functional.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/future.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/future.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/future.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/future.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/hash.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/hash.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/hash.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/hash.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/ios.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/ios.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/ios.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/ios.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/iostream.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/iostream.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/iostream.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/iostream.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/locale.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/locale.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/locale.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/locale.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/memory.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/memory.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/memory.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/memory.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/mutex.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/mutex.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/mutex.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/mutex.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/new.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/new.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/new.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/new.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/optional.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/optional.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/optional.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/optional.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/random.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/random.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/random.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/random.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/regex.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/regex.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/regex.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/regex.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/shared_mutex.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/shared_mutex.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/shared_mutex.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/shared_mutex.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/stdexcept.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/stdexcept.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/stdexcept.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/stdexcept.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/string.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/string.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/string.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/string.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/strstream.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/strstream.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/strstream.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/strstream.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/system_error.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/system_error.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/system_error.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/system_error.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/thread.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/thread.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/thread.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/thread.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/typeinfo.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/typeinfo.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/typeinfo.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/typeinfo.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/utility.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/utility.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/utility.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/utility.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/valarray.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/valarray.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/valarray.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/valarray.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/variant.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/variant.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/variant.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/variant.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/vector.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/vector.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/vector.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/vector.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a\

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/auxhelper.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/dynamic_cast.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/exception.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/guard.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/memory.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/stdexcept.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/typeinfo.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/unwind.cc.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name libs-cxxsupp-libcxxrt -o contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a.mf -t LIBRARY -Ya,lics BSD -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/memory.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/auxhelper.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/stdexcept.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/exception.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/guard.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/typeinfo.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/dynamic_cast.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/unwind.cc.pic.o'

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/auxhelper.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/auxhelper.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/auxhelper.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/auxhelper.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/dynamic_cast.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/dynamic_cast.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/dynamic_cast.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/dynamic_cast.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/exception.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/exception.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/exception.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/exception.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/guard.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/guard.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/guard.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/guard.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/memory.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/memory.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/memory.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/memory.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/stdexcept.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/stdexcept.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/stdexcept.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/stdexcept.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/typeinfo.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/typeinfo.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/typeinfo.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/typeinfo.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/unwind.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/unwind.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/unwind.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/unwind.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a\

$(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/double-conversion/bignum-dtoa.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/double-conversion/bignum.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/double-conversion/cached-powers.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/double-conversion/diy-fp.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/double-conversion/double-conversion.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/double-conversion/fast-dtoa.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/double-conversion/fixed-dtoa.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/double-conversion/strtod.cc.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name contrib-libs-double-conversion -o contrib/libs/double-conversion/libcontrib-libs-double-conversion.a.mf -t LIBRARY -Ya,lics BSD3 -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a' '$(BUILD_ROOT)/contrib/libs/double-conversion/cached-powers.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/double-conversion/bignum-dtoa.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/double-conversion/double-conversion.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/double-conversion/diy-fp.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/double-conversion/fixed-dtoa.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/double-conversion/strtod.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/double-conversion/bignum.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/double-conversion/fast-dtoa.cc.pic.o'

$(BUILD_ROOT)/contrib/libs/double-conversion/bignum-dtoa.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/bignum-dtoa.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/bignum-dtoa.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/bignum-dtoa.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/bignum.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/bignum.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/bignum.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/bignum.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/cached-powers.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/cached-powers.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/cached-powers.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/cached-powers.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/diy-fp.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/diy-fp.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/diy-fp.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/diy-fp.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/double-conversion.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/double-conversion.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/double-conversion.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/double-conversion.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/fast-dtoa.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/fast-dtoa.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/fast-dtoa.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/fast-dtoa.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/fixed-dtoa.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/fixed-dtoa.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/fixed-dtoa.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/fixed-dtoa.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/strtod.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/strtod.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/strtod.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/strtod.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a\

$(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-EHABI.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-sjlj.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1-gcc-ext.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersRestore.S.o\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersSave.S.o\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/src/libunwind.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name contrib-libs-libunwind_master -o contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a.mf -t LIBRARY -Ya,lics Apache License 2.0 -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a' '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/libunwind.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-EHABI.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1.c.pic.o' '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1-gcc-ext.c.pic.o' '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-sjlj.c.pic.o' '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersRestore.S.o' '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersSave.S.o'

$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-EHABI.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/libunwind_master/src/Unwind-EHABI.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-EHABI.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/libunwind_master/src/Unwind-EHABI.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/libunwind_master/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -fno-rtti -fno-exceptions -funwind-tables -nostdinc++

$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-sjlj.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/libunwind_master/src/Unwind-sjlj.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master/src'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-sjlj.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/libunwind_master/src/Unwind-sjlj.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/libunwind_master/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c99

$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1-gcc-ext.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1-gcc-ext.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master/src'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1-gcc-ext.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1-gcc-ext.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/libunwind_master/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c99

$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master/src'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/libunwind_master/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c99

$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersRestore.S.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersRestore.S\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master/src'
	${CC} --target=x86_64-linux-gnu -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -c -o '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersRestore.S.o' '$(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersRestore.S' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/libunwind_master/include'

$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersSave.S.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersSave.S\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master/src'
	${CC} --target=x86_64-linux-gnu -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -c -o '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersSave.S.o' '$(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersSave.S' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/libunwind_master/include'

$(BUILD_ROOT)/contrib/libs/libunwind_master/src/libunwind.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/libunwind_master/src/libunwind.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/libunwind.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/libunwind_master/src/libunwind.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/libunwind_master/include' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -fno-rtti -fno-exceptions -funwind-tables -nostdinc++

$(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a\

$(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/zlib/adler32.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/compress.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/crc32.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/deflate.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/gzclose.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/gzlib.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/gzread.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/gzwrite.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/infback.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/inffast.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/inflate.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/inftrees.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/trees.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/uncompr.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/zutil.c.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name contrib-libs-zlib -o contrib/libs/zlib/libcontrib-libs-zlib.a.mf -t LIBRARY -Ya,lics Zlib -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a' '$(BUILD_ROOT)/contrib/libs/zlib/adler32.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/compress.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/crc32.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/deflate.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/gzclose.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/gzlib.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/gzread.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/gzwrite.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/infback.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/inffast.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/inflate.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/inftrees.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/trees.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/uncompr.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/zutil.c.pic.o'

$(BUILD_ROOT)/contrib/libs/zlib/adler32.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/adler32.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/adler32.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/adler32.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/compress.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/compress.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/compress.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/compress.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/crc32.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/crc32.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/crc32.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/crc32.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/deflate.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/deflate.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/deflate.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/deflate.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/gzclose.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/gzclose.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/gzclose.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/gzclose.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/gzlib.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/gzlib.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/gzlib.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/gzlib.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/gzread.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/gzread.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/gzread.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/gzread.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/gzwrite.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/gzwrite.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/gzwrite.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/gzwrite.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/infback.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/infback.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/infback.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/infback.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/inffast.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/inffast.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/inffast.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/inffast.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/inflate.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/inflate.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/inflate.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/inflate.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/inftrees.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/inftrees.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/inftrees.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/inftrees.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/trees.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/trees.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/trees.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/trees.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/uncompr.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/uncompr.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/uncompr.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/uncompr.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/zutil.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/zutil.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/zutil.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/zutil.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a.mf\
        ::\
        $(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a\

$(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a\
        ::\
        $(BUILD_ROOT)/library/colorizer/colors.cpp.pic.o\
        $(BUILD_ROOT)/library/colorizer/output.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/colorizer'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-colorizer -o library/colorizer/liblibrary-colorizer.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a' '$(BUILD_ROOT)/library/colorizer/colors.cpp.pic.o' '$(BUILD_ROOT)/library/colorizer/output.cpp.pic.o'

$(BUILD_ROOT)/library/colorizer/colors.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/colorizer/colors.cpp\

	mkdir -p '$(BUILD_ROOT)/library/colorizer'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/colorizer/colors.cpp.pic.o' '$(SOURCE_ROOT)/library/colorizer/colors.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/colorizer/output.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/colorizer/output.cpp\

	mkdir -p '$(BUILD_ROOT)/library/colorizer'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/colorizer/output.cpp.pic.o' '$(SOURCE_ROOT)/library/colorizer/output.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/cppparser/liblibrary-cppparser.a.mf\
        ::\
        $(BUILD_ROOT)/library/cppparser/liblibrary-cppparser.a\

$(BUILD_ROOT)/library/cppparser/liblibrary-cppparser.a\
        ::\
        $(BUILD_ROOT)/library/cppparser/parser.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/cppparser'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-cppparser -o library/cppparser/liblibrary-cppparser.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/cppparser/liblibrary-cppparser.a' '$(BUILD_ROOT)/library/cppparser/parser.cpp.pic.o'

$(BUILD_ROOT)/library/cppparser/parser.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/cppparser/parser.cpp\

	mkdir -p '$(BUILD_ROOT)/library/cppparser'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/cppparser/parser.cpp.pic.o' '$(SOURCE_ROOT)/library/cppparser/parser.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/cpuid_check/cpu_id_check.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/cpuid_check/cpu_id_check.cpp\

	mkdir -p '$(BUILD_ROOT)/library/cpuid_check'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/cpuid_check/cpu_id_check.cpp.pic.o' '$(SOURCE_ROOT)/library/cpuid_check/cpu_id_check.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a.mf\
        ::\
        $(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a\

$(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a\
        ::\
        $(BUILD_ROOT)/library/getopt/small/last_getopt.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/last_getopt_easy_setup.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/last_getopt_opt.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/last_getopt_opts.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/last_getopt_parse_result.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/last_getopt_parser.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/modchooser.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/opt.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/opt2.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/posix_getopt.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/ygetopt.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-getopt-small -o library/getopt/small/liblibrary-getopt-small.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a' '$(BUILD_ROOT)/library/getopt/small/last_getopt.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/last_getopt_easy_setup.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/last_getopt_opt.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/last_getopt_opts.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/last_getopt_parser.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/last_getopt_parse_result.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/modchooser.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/opt.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/opt2.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/posix_getopt.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/ygetopt.cpp.pic.o'

$(BUILD_ROOT)/library/getopt/small/last_getopt.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/last_getopt.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/last_getopt.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/last_getopt.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/last_getopt_easy_setup.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/last_getopt_easy_setup.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/last_getopt_easy_setup.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/last_getopt_easy_setup.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/last_getopt_opt.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/last_getopt_opt.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/last_getopt_opt.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/last_getopt_opt.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/last_getopt_opts.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/last_getopt_opts.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/last_getopt_opts.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/last_getopt_opts.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/last_getopt_parse_result.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/last_getopt_parse_result.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/last_getopt_parse_result.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/last_getopt_parse_result.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/last_getopt_parser.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/last_getopt_parser.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/last_getopt_parser.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/last_getopt_parser.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/modchooser.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/modchooser.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/modchooser.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/modchooser.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/opt.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/opt.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/opt.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/opt.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/opt2.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/opt2.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/opt2.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/opt2.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/posix_getopt.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/posix_getopt.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/posix_getopt.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/posix_getopt.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/ygetopt.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/ygetopt.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/ygetopt.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/ygetopt.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/lfalloc/liblibrary-lfalloc.a.mf\
        ::\
        $(BUILD_ROOT)/library/lfalloc/liblibrary-lfalloc.a\

$(BUILD_ROOT)/library/lfalloc/liblibrary-lfalloc.a\
        ::\
        $(BUILD_ROOT)/library/lfalloc/lf_allocX64.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/lfalloc'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-lfalloc -o library/lfalloc/liblibrary-lfalloc.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/lfalloc/liblibrary-lfalloc.a' '$(BUILD_ROOT)/library/lfalloc/lf_allocX64.cpp.pic.o'

$(BUILD_ROOT)/library/lfalloc/lf_allocX64.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/lfalloc/lf_allocX64.cpp\

	mkdir -p '$(BUILD_ROOT)/library/lfalloc'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/lfalloc/lf_allocX64.cpp.pic.o' '$(SOURCE_ROOT)/library/lfalloc/lf_allocX64.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a.mf\
        ::\
        $(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a\

$(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a\
        ::\
        $(BUILD_ROOT)/library/malloc/api/malloc.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/malloc/api'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-malloc-api -o library/malloc/api/liblibrary-malloc-api.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a' '$(BUILD_ROOT)/library/malloc/api/malloc.cpp.pic.o'

$(BUILD_ROOT)/library/malloc/api/malloc.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/malloc/api/malloc.cpp\

	mkdir -p '$(BUILD_ROOT)/library/malloc/api'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/malloc/api/malloc.cpp.pic.o' '$(SOURCE_ROOT)/library/malloc/api/malloc.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/tools/enum_parser/enum_parser/main.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/tools/enum_parser/enum_parser/main.cpp\

	mkdir -p '$(BUILD_ROOT)/tools/enum_parser/enum_parser'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/tools/enum_parser/enum_parser/main.cpp.pic.o' '$(SOURCE_ROOT)/tools/enum_parser/enum_parser/main.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/tools/enum_parser/parse_enum/libtools-enum_parser-parse_enum.a.mf\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/parse_enum/libtools-enum_parser-parse_enum.a\

$(BUILD_ROOT)/tools/enum_parser/parse_enum/libtools-enum_parser-parse_enum.a\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/parse_enum/parse_enum.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/tools/enum_parser/parse_enum'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name tools-enum_parser-parse_enum -o tools/enum_parser/parse_enum/libtools-enum_parser-parse_enum.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/tools/enum_parser/parse_enum/libtools-enum_parser-parse_enum.a' '$(BUILD_ROOT)/tools/enum_parser/parse_enum/parse_enum.cpp.pic.o'

$(BUILD_ROOT)/tools/enum_parser/parse_enum/parse_enum.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/tools/enum_parser/parse_enum/parse_enum.cpp\

	mkdir -p '$(BUILD_ROOT)/tools/enum_parser/parse_enum'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/tools/enum_parser/parse_enum/parse_enum.cpp.pic.o' '$(SOURCE_ROOT)/tools/enum_parser/parse_enum/parse_enum.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/charset/libutil-charset.a.mf\
        ::\
        $(BUILD_ROOT)/util/charset/libutil-charset.a\

$(BUILD_ROOT)/util/charset/libutil-charset.a\
        ::\
        $(BUILD_ROOT)/util/charset/all_charset.cpp.pic.o\
        $(BUILD_ROOT)/util/charset/wide_sse41.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/util/charset'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name util-charset -o util/charset/libutil-charset.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/util/charset/libutil-charset.a' '$(BUILD_ROOT)/util/charset/wide_sse41.cpp.pic.o' '$(BUILD_ROOT)/util/charset/all_charset.cpp.pic.o'

$(BUILD_ROOT)/util/charset/all_charset.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/charset/all_charset.cpp\

	mkdir -p '$(BUILD_ROOT)/util/charset'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/charset/all_charset.cpp.pic.o' '$(BUILD_ROOT)/util/charset/all_charset.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/charset/all_charset.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/util/charset/generated/unidata.cpp\
        $(SOURCE_ROOT)/util/charset/recode_result.cpp\
        $(SOURCE_ROOT)/util/charset/unicode_table.cpp\
        $(SOURCE_ROOT)/util/charset/unidata.cpp\
        $(SOURCE_ROOT)/util/charset/utf8.cpp\
        $(SOURCE_ROOT)/util/charset/wide.cpp\

	mkdir -p '$(BUILD_ROOT)/util/charset'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/util/charset/all_charset.cpp' util/charset/generated/unidata.cpp util/charset/recode_result.cpp util/charset/unicode_table.cpp util/charset/unidata.cpp util/charset/utf8.cpp util/charset/wide.cpp

$(BUILD_ROOT)/util/charset/wide_sse41.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/util/charset/wide_sse41.cpp\

	mkdir -p '$(BUILD_ROOT)/util/charset'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/charset/wide_sse41.cpp.pic.o' '$(SOURCE_ROOT)/util/charset/wide_sse41.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse4.1

$(BUILD_ROOT)/util/libyutil.a.mf\
        ::\
        $(BUILD_ROOT)/util/libyutil.a\

$(BUILD_ROOT)/util/libyutil.a\
        ::\
        $(BUILD_ROOT)/util/all_datetime.cpp.pic.o\
        $(BUILD_ROOT)/util/all_digest.cpp.pic.o\
        $(BUILD_ROOT)/util/all_folder.cpp.pic.o\
        $(BUILD_ROOT)/util/all_generic.cpp.pic.o\
        $(BUILD_ROOT)/util/all_memory.cpp.pic.o\
        $(BUILD_ROOT)/util/all_network.cpp.pic.o\
        $(BUILD_ROOT)/util/all_random.cpp.pic.o\
        $(BUILD_ROOT)/util/all_stream.cpp.pic.o\
        $(BUILD_ROOT)/util/all_string.cpp.pic.o\
        $(BUILD_ROOT)/util/all_system_1.cpp.pic.o\
        $(BUILD_ROOT)/util/all_system_2.cpp.pic.o\
        $(BUILD_ROOT)/util/all_thread.cpp.pic.o\
        $(BUILD_ROOT)/util/all_util.cpp.pic.o\
        $(BUILD_ROOT)/util/datetime/parser.rl6.cpp.pic.o\
        $(BUILD_ROOT)/util/digest/city.cpp.pic.o\
        $(BUILD_ROOT)/util/random/random.cpp.pic.o\
        $(BUILD_ROOT)/util/string/cast.cpp.pic.o\
        $(BUILD_ROOT)/util/system/context_x86.o\
        $(BUILD_ROOT)/util/system/mktemp_system.cpp.pic.o\
        $(BUILD_ROOT)/util/system/strlcpy.c.pic.o\
        $(BUILD_ROOT)/util/system/valgrind.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name yutil -o util/libyutil.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/util/libyutil.a' '$(BUILD_ROOT)/util/digest/city.cpp.pic.o' '$(BUILD_ROOT)/util/random/random.cpp.pic.o' '$(BUILD_ROOT)/util/string/cast.cpp.pic.o' '$(BUILD_ROOT)/util/system/context_x86.o' '$(BUILD_ROOT)/util/system/valgrind.cpp.pic.o' '$(BUILD_ROOT)/util/system/strlcpy.c.pic.o' '$(BUILD_ROOT)/util/system/mktemp_system.cpp.pic.o' '$(BUILD_ROOT)/util/all_datetime.cpp.pic.o' '$(BUILD_ROOT)/util/all_digest.cpp.pic.o' '$(BUILD_ROOT)/util/all_util.cpp.pic.o' '$(BUILD_ROOT)/util/all_folder.cpp.pic.o' '$(BUILD_ROOT)/util/all_generic.cpp.pic.o' '$(BUILD_ROOT)/util/all_memory.cpp.pic.o' '$(BUILD_ROOT)/util/all_network.cpp.pic.o' '$(BUILD_ROOT)/util/all_random.cpp.pic.o' '$(BUILD_ROOT)/util/all_stream.cpp.pic.o' '$(BUILD_ROOT)/util/all_string.cpp.pic.o' '$(BUILD_ROOT)/util/all_system_1.cpp.pic.o' '$(BUILD_ROOT)/util/all_system_2.cpp.pic.o' '$(BUILD_ROOT)/util/all_thread.cpp.pic.o' '$(BUILD_ROOT)/util/datetime/parser.rl6.cpp.pic.o'

$(BUILD_ROOT)/util/all_datetime.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_datetime.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_datetime.cpp.pic.o' '$(BUILD_ROOT)/util/all_datetime.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_datetime.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/util/datetime/base.cpp\
        $(SOURCE_ROOT)/util/datetime/constants.cpp\
        $(SOURCE_ROOT)/util/datetime/cputimer.cpp\
        $(SOURCE_ROOT)/util/datetime/systime.cpp\
        $(SOURCE_ROOT)/util/datetime/uptime.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/util/all_datetime.cpp' util/datetime/base.cpp util/datetime/constants.cpp util/datetime/cputimer.cpp util/datetime/systime.cpp util/datetime/uptime.cpp

$(BUILD_ROOT)/util/all_digest.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_digest.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_digest.cpp.pic.o' '$(BUILD_ROOT)/util/all_digest.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_digest.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/util/digest/fnv.cpp\
        $(SOURCE_ROOT)/util/digest/multi.cpp\
        $(SOURCE_ROOT)/util/digest/murmur.cpp\
        $(SOURCE_ROOT)/util/digest/numeric.cpp\
        $(SOURCE_ROOT)/util/digest/sequence.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/util/all_digest.cpp' util/digest/fnv.cpp util/digest/multi.cpp util/digest/murmur.cpp util/digest/numeric.cpp util/digest/sequence.cpp

$(BUILD_ROOT)/util/all_folder.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_folder.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_folder.cpp.pic.o' '$(BUILD_ROOT)/util/all_folder.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_folder.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/util/folder/dirut.cpp\
        $(SOURCE_ROOT)/util/folder/filelist.cpp\
        $(SOURCE_ROOT)/util/folder/fts.cpp\
        $(SOURCE_ROOT)/util/folder/iterator.cpp\
        $(SOURCE_ROOT)/util/folder/path.cpp\
        $(SOURCE_ROOT)/util/folder/pathsplit.cpp\
        $(SOURCE_ROOT)/util/folder/tempdir.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/util/all_folder.cpp' util/folder/dirut.cpp util/folder/filelist.cpp util/folder/fts.cpp util/folder/iterator.cpp util/folder/path.cpp util/folder/pathsplit.cpp util/folder/tempdir.cpp

$(BUILD_ROOT)/util/all_generic.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_generic.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_generic.cpp.pic.o' '$(BUILD_ROOT)/util/all_generic.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_generic.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/util/generic/scope.cpp\
        $(SOURCE_ROOT)/util/generic/adaptor.cpp\
        $(SOURCE_ROOT)/util/generic/algorithm.cpp\
        $(SOURCE_ROOT)/util/generic/array_ref.cpp\
        $(SOURCE_ROOT)/util/generic/array_size.cpp\
        $(SOURCE_ROOT)/util/generic/bitmap.cpp\
        $(SOURCE_ROOT)/util/generic/bitops.cpp\
        $(SOURCE_ROOT)/util/generic/bt_exception.cpp\
        $(SOURCE_ROOT)/util/generic/buffer.cpp\
        $(SOURCE_ROOT)/util/generic/cast.cpp\
        $(SOURCE_ROOT)/util/generic/chartraits.cpp\
        $(SOURCE_ROOT)/util/generic/deque.cpp\
        $(SOURCE_ROOT)/util/generic/explicit_type.cpp\
        $(SOURCE_ROOT)/util/generic/fastqueue.cpp\
        $(SOURCE_ROOT)/util/generic/flags.cpp\
        $(SOURCE_ROOT)/util/generic/function.cpp\
        $(SOURCE_ROOT)/util/generic/fwd.cpp\
        $(SOURCE_ROOT)/util/generic/guid.cpp\
        $(SOURCE_ROOT)/util/generic/hash.cpp\
        $(SOURCE_ROOT)/util/generic/hash_primes.cpp\
        $(SOURCE_ROOT)/util/generic/hash_set.cpp\
        $(SOURCE_ROOT)/util/generic/hide_ptr.cpp\
        $(SOURCE_ROOT)/util/generic/intrlist.cpp\
        $(SOURCE_ROOT)/util/generic/is_in.cpp\
        $(SOURCE_ROOT)/util/generic/iterator.cpp\
        $(SOURCE_ROOT)/util/generic/iterator_range.cpp\
        $(SOURCE_ROOT)/util/generic/lazy_value.cpp\
        $(SOURCE_ROOT)/util/generic/list.cpp\
        $(SOURCE_ROOT)/util/generic/map.cpp\
        $(SOURCE_ROOT)/util/generic/mapfindptr.cpp\
        $(SOURCE_ROOT)/util/generic/maybe.cpp\
        $(SOURCE_ROOT)/util/generic/mem_copy.cpp\
        $(SOURCE_ROOT)/util/generic/noncopyable.cpp\
        $(SOURCE_ROOT)/util/generic/object_counter.cpp\
        $(SOURCE_ROOT)/util/generic/ptr.cpp\
        $(SOURCE_ROOT)/util/generic/queue.cpp\
        $(SOURCE_ROOT)/util/generic/refcount.cpp\
        $(SOURCE_ROOT)/util/generic/serialized_enum.cpp\
        $(SOURCE_ROOT)/util/generic/set.cpp\
        $(SOURCE_ROOT)/util/generic/singleton.cpp\
        $(SOURCE_ROOT)/util/generic/size_literals.cpp\
        $(SOURCE_ROOT)/util/generic/stack.cpp\
        $(SOURCE_ROOT)/util/generic/store_policy.cpp\
        $(SOURCE_ROOT)/util/generic/strbuf.cpp\
        $(SOURCE_ROOT)/util/generic/strfcpy.cpp\
        $(SOURCE_ROOT)/util/generic/string.cpp\
        $(SOURCE_ROOT)/util/generic/typelist.cpp\
        $(SOURCE_ROOT)/util/generic/type_name.cpp\
        $(SOURCE_ROOT)/util/generic/typetraits.cpp\
        $(SOURCE_ROOT)/util/generic/utility.cpp\
        $(SOURCE_ROOT)/util/generic/va_args.cpp\
        $(SOURCE_ROOT)/util/generic/vector.cpp\
        $(SOURCE_ROOT)/util/generic/xrange.cpp\
        $(SOURCE_ROOT)/util/generic/yexception.cpp\
        $(SOURCE_ROOT)/util/generic/ylimits.cpp\
        $(SOURCE_ROOT)/util/generic/ymath.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/util/all_generic.cpp' util/generic/scope.cpp util/generic/adaptor.cpp util/generic/algorithm.cpp util/generic/array_ref.cpp util/generic/array_size.cpp util/generic/bitmap.cpp util/generic/bitops.cpp util/generic/bt_exception.cpp util/generic/buffer.cpp util/generic/cast.cpp util/generic/chartraits.cpp util/generic/deque.cpp util/generic/explicit_type.cpp util/generic/fastqueue.cpp util/generic/flags.cpp util/generic/function.cpp util/generic/fwd.cpp util/generic/guid.cpp util/generic/hash.cpp util/generic/hash_primes.cpp util/generic/hash_set.cpp util/generic/hide_ptr.cpp util/generic/intrlist.cpp util/generic/is_in.cpp util/generic/iterator.cpp util/generic/iterator_range.cpp util/generic/lazy_value.cpp util/generic/list.cpp util/generic/map.cpp util/generic/mapfindptr.cpp util/generic/maybe.cpp util/generic/mem_copy.cpp util/generic/noncopyable.cpp util/generic/object_counter.cpp util/generic/ptr.cpp util/generic/queue.cpp util/generic/refcount.cpp util/generic/serialized_enum.cpp util/generic/set.cpp util/generic/singleton.cpp util/generic/size_literals.cpp util/generic/stack.cpp util/generic/store_policy.cpp util/generic/strbuf.cpp util/generic/strfcpy.cpp util/generic/string.cpp util/generic/typelist.cpp util/generic/type_name.cpp util/generic/typetraits.cpp util/generic/utility.cpp util/generic/va_args.cpp util/generic/vector.cpp util/generic/xrange.cpp util/generic/yexception.cpp util/generic/ylimits.cpp util/generic/ymath.cpp

$(BUILD_ROOT)/util/all_memory.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_memory.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_memory.cpp.pic.o' '$(BUILD_ROOT)/util/all_memory.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_memory.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/util/memory/addstorage.cpp\
        $(SOURCE_ROOT)/util/memory/alloc.cpp\
        $(SOURCE_ROOT)/util/memory/blob.cpp\
        $(SOURCE_ROOT)/util/memory/mmapalloc.cpp\
        $(SOURCE_ROOT)/util/memory/pool.cpp\
        $(SOURCE_ROOT)/util/memory/segmented_string_pool.cpp\
        $(SOURCE_ROOT)/util/memory/segpool_alloc.cpp\
        $(SOURCE_ROOT)/util/memory/smallobj.cpp\
        $(SOURCE_ROOT)/util/memory/tempbuf.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/util/all_memory.cpp' util/memory/addstorage.cpp util/memory/alloc.cpp util/memory/blob.cpp util/memory/mmapalloc.cpp util/memory/pool.cpp util/memory/segmented_string_pool.cpp util/memory/segpool_alloc.cpp util/memory/smallobj.cpp util/memory/tempbuf.cpp

$(BUILD_ROOT)/util/all_network.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_network.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_network.cpp.pic.o' '$(BUILD_ROOT)/util/all_network.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_network.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/util/network/address.cpp\
        $(SOURCE_ROOT)/util/network/endpoint.cpp\
        $(SOURCE_ROOT)/util/network/hostip.cpp\
        $(SOURCE_ROOT)/util/network/init.cpp\
        $(SOURCE_ROOT)/util/network/interface.cpp\
        $(SOURCE_ROOT)/util/network/iovec.cpp\
        $(SOURCE_ROOT)/util/network/ip.cpp\
        $(SOURCE_ROOT)/util/network/netloss.cpp\
        $(SOURCE_ROOT)/util/network/nonblock.cpp\
        $(SOURCE_ROOT)/util/network/pair.cpp\
        $(SOURCE_ROOT)/util/network/poller.cpp\
        $(SOURCE_ROOT)/util/network/pollerimpl.cpp\
        $(SOURCE_ROOT)/util/network/sock.cpp\
        $(SOURCE_ROOT)/util/network/socket.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/util/all_network.cpp' util/network/address.cpp util/network/endpoint.cpp util/network/hostip.cpp util/network/init.cpp util/network/interface.cpp util/network/iovec.cpp util/network/ip.cpp util/network/netloss.cpp util/network/nonblock.cpp util/network/pair.cpp util/network/poller.cpp util/network/pollerimpl.cpp util/network/sock.cpp util/network/socket.cpp

$(BUILD_ROOT)/util/all_random.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_random.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_random.cpp.pic.o' '$(BUILD_ROOT)/util/all_random.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_random.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/util/random/common_ops.cpp\
        $(SOURCE_ROOT)/util/random/easy.cpp\
        $(SOURCE_ROOT)/util/random/entropy.cpp\
        $(SOURCE_ROOT)/util/random/fast.cpp\
        $(SOURCE_ROOT)/util/random/lcg_engine.cpp\
        $(SOURCE_ROOT)/util/random/mersenne32.cpp\
        $(SOURCE_ROOT)/util/random/mersenne64.cpp\
        $(SOURCE_ROOT)/util/random/mersenne.cpp\
        $(SOURCE_ROOT)/util/random/normal.cpp\
        $(SOURCE_ROOT)/util/random/shuffle.cpp\
        $(SOURCE_ROOT)/util/random/init_atfork.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/util/all_random.cpp' util/random/common_ops.cpp util/random/easy.cpp util/random/entropy.cpp util/random/fast.cpp util/random/lcg_engine.cpp util/random/mersenne32.cpp util/random/mersenne64.cpp util/random/mersenne.cpp util/random/normal.cpp util/random/shuffle.cpp util/random/init_atfork.cpp

$(BUILD_ROOT)/util/all_stream.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_stream.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_stream.cpp.pic.o' '$(BUILD_ROOT)/util/all_stream.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_stream.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/util/stream/aligned.cpp\
        $(SOURCE_ROOT)/util/stream/buffer.cpp\
        $(SOURCE_ROOT)/util/stream/buffered.cpp\
        $(SOURCE_ROOT)/util/stream/debug.cpp\
        $(SOURCE_ROOT)/util/stream/direct_io.cpp\
        $(SOURCE_ROOT)/util/stream/file.cpp\
        $(SOURCE_ROOT)/util/stream/format.cpp\
        $(SOURCE_ROOT)/util/stream/fwd.cpp\
        $(SOURCE_ROOT)/util/stream/hex.cpp\
        $(SOURCE_ROOT)/util/stream/holder.cpp\
        $(SOURCE_ROOT)/util/stream/input.cpp\
        $(SOURCE_ROOT)/util/stream/labeled.cpp\
        $(SOURCE_ROOT)/util/stream/length.cpp\
        $(SOURCE_ROOT)/util/stream/mem.cpp\
        $(SOURCE_ROOT)/util/stream/multi.cpp\
        $(SOURCE_ROOT)/util/stream/null.cpp\
        $(SOURCE_ROOT)/util/stream/output.cpp\
        $(SOURCE_ROOT)/util/stream/pipe.cpp\
        $(SOURCE_ROOT)/util/stream/printf.cpp\
        $(SOURCE_ROOT)/util/stream/str.cpp\
        $(SOURCE_ROOT)/util/stream/tee.cpp\
        $(SOURCE_ROOT)/util/stream/tempbuf.cpp\
        $(SOURCE_ROOT)/util/stream/tokenizer.cpp\
        $(SOURCE_ROOT)/util/stream/trace.cpp\
        $(SOURCE_ROOT)/util/stream/walk.cpp\
        $(SOURCE_ROOT)/util/stream/zerocopy.cpp\
        $(SOURCE_ROOT)/util/stream/zlib.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/util/all_stream.cpp' util/stream/aligned.cpp util/stream/buffer.cpp util/stream/buffered.cpp util/stream/debug.cpp util/stream/direct_io.cpp util/stream/file.cpp util/stream/format.cpp util/stream/fwd.cpp util/stream/hex.cpp util/stream/holder.cpp util/stream/input.cpp util/stream/labeled.cpp util/stream/length.cpp util/stream/mem.cpp util/stream/multi.cpp util/stream/null.cpp util/stream/output.cpp util/stream/pipe.cpp util/stream/printf.cpp util/stream/str.cpp util/stream/tee.cpp util/stream/tempbuf.cpp util/stream/tokenizer.cpp util/stream/trace.cpp util/stream/walk.cpp util/stream/zerocopy.cpp util/stream/zlib.cpp

$(BUILD_ROOT)/util/all_string.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_string.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_string.cpp.pic.o' '$(BUILD_ROOT)/util/all_string.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_string.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/util/string/ascii.cpp\
        $(SOURCE_ROOT)/util/string/builder.cpp\
        $(SOURCE_ROOT)/util/string/cgiparam.cpp\
        $(SOURCE_ROOT)/util/string/cstriter.cpp\
        $(SOURCE_ROOT)/util/string/escape.cpp\
        $(SOURCE_ROOT)/util/string/hex.cpp\
        $(SOURCE_ROOT)/util/string/join.cpp\
        $(SOURCE_ROOT)/util/string/kmp.cpp\
        $(SOURCE_ROOT)/util/string/pcdata.cpp\
        $(SOURCE_ROOT)/util/string/printf.cpp\
        $(SOURCE_ROOT)/util/string/quote.cpp\
        $(SOURCE_ROOT)/util/string/scan.cpp\
        $(SOURCE_ROOT)/util/string/split.cpp\
        $(SOURCE_ROOT)/util/string/strip.cpp\
        $(SOURCE_ROOT)/util/string/strspn.cpp\
        $(SOURCE_ROOT)/util/string/subst.cpp\
        $(SOURCE_ROOT)/util/string/type.cpp\
        $(SOURCE_ROOT)/util/string/url.cpp\
        $(SOURCE_ROOT)/util/string/util.cpp\
        $(SOURCE_ROOT)/util/string/vector.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/util/all_string.cpp' util/string/ascii.cpp util/string/builder.cpp util/string/cgiparam.cpp util/string/cstriter.cpp util/string/escape.cpp util/string/hex.cpp util/string/join.cpp util/string/kmp.cpp util/string/pcdata.cpp util/string/printf.cpp util/string/quote.cpp util/string/scan.cpp util/string/split.cpp util/string/strip.cpp util/string/strspn.cpp util/string/subst.cpp util/string/type.cpp util/string/url.cpp util/string/util.cpp util/string/vector.cpp

$(BUILD_ROOT)/util/all_system_1.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_system_1.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_system_1.cpp.pic.o' '$(BUILD_ROOT)/util/all_system_1.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_system_1.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/util/system/atexit.cpp\
        $(SOURCE_ROOT)/util/system/backtrace.cpp\
        $(SOURCE_ROOT)/util/system/compat.cpp\
        $(SOURCE_ROOT)/util/system/compiler.cpp\
        $(SOURCE_ROOT)/util/system/condvar.cpp\
        $(SOURCE_ROOT)/util/system/context.cpp\
        $(SOURCE_ROOT)/util/system/daemon.cpp\
        $(SOURCE_ROOT)/util/system/datetime.cpp\
        $(SOURCE_ROOT)/util/system/defaults.c\
        $(SOURCE_ROOT)/util/system/demangle.cpp\
        $(SOURCE_ROOT)/util/system/direct_io.cpp\
        $(SOURCE_ROOT)/util/system/dynlib.cpp\
        $(SOURCE_ROOT)/util/system/env.cpp\
        $(SOURCE_ROOT)/util/system/err.cpp\
        $(SOURCE_ROOT)/util/system/error.cpp\
        $(SOURCE_ROOT)/util/system/event.cpp\
        $(SOURCE_ROOT)/util/system/execpath.cpp\
        $(SOURCE_ROOT)/util/system/fasttime.cpp\
        $(SOURCE_ROOT)/util/system/file.cpp\
        $(SOURCE_ROOT)/util/system/file_lock.cpp\
        $(SOURCE_ROOT)/util/system/filemap.cpp\
        $(SOURCE_ROOT)/util/system/flock.cpp\
        $(SOURCE_ROOT)/util/system/fs.cpp\
        $(SOURCE_ROOT)/util/system/fstat.cpp\
        $(SOURCE_ROOT)/util/system/getpid.cpp\
        $(SOURCE_ROOT)/util/system/hi_lo.cpp\
        $(SOURCE_ROOT)/util/system/hostname.cpp\
        $(SOURCE_ROOT)/util/system/hp_timer.cpp\
        $(SOURCE_ROOT)/util/system/info.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/util/all_system_1.cpp' util/system/atexit.cpp util/system/backtrace.cpp util/system/compat.cpp util/system/compiler.cpp util/system/condvar.cpp util/system/context.cpp util/system/daemon.cpp util/system/datetime.cpp util/system/defaults.c util/system/demangle.cpp util/system/direct_io.cpp util/system/dynlib.cpp util/system/env.cpp util/system/err.cpp util/system/error.cpp util/system/event.cpp util/system/execpath.cpp util/system/fasttime.cpp util/system/file.cpp util/system/file_lock.cpp util/system/filemap.cpp util/system/flock.cpp util/system/fs.cpp util/system/fstat.cpp util/system/getpid.cpp util/system/hi_lo.cpp util/system/hostname.cpp util/system/hp_timer.cpp util/system/info.cpp

$(BUILD_ROOT)/util/all_system_2.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_system_2.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_system_2.cpp.pic.o' '$(BUILD_ROOT)/util/all_system_2.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_system_2.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/util/system/align.cpp\
        $(SOURCE_ROOT)/util/system/atomic.cpp\
        $(SOURCE_ROOT)/util/system/byteorder.cpp\
        $(SOURCE_ROOT)/util/system/cpu_id.cpp\
        $(SOURCE_ROOT)/util/system/fhandle.cpp\
        $(SOURCE_ROOT)/util/system/guard.cpp\
        $(SOURCE_ROOT)/util/system/interrupt_signals.cpp\
        $(SOURCE_ROOT)/util/system/madvise.cpp\
        $(SOURCE_ROOT)/util/system/maxlen.cpp\
        $(SOURCE_ROOT)/util/system/mem_info.cpp\
        $(SOURCE_ROOT)/util/system/mktemp.cpp\
        $(SOURCE_ROOT)/util/system/mlock.cpp\
        $(SOURCE_ROOT)/util/system/mutex.cpp\
        $(SOURCE_ROOT)/util/system/nice.cpp\
        $(SOURCE_ROOT)/util/system/pipe.cpp\
        $(SOURCE_ROOT)/util/system/platform.cpp\
        $(SOURCE_ROOT)/util/system/progname.cpp\
        $(SOURCE_ROOT)/util/system/protect.cpp\
        $(SOURCE_ROOT)/util/system/rusage.cpp\
        $(SOURCE_ROOT)/util/system/rwlock.cpp\
        $(SOURCE_ROOT)/util/system/sanitizers.cpp\
        $(SOURCE_ROOT)/util/system/sem.cpp\
        $(SOURCE_ROOT)/util/system/shellcommand.cpp\
        $(SOURCE_ROOT)/util/system/shmat.cpp\
        $(SOURCE_ROOT)/util/system/sigset.cpp\
        $(SOURCE_ROOT)/util/system/spinlock.cpp\
        $(SOURCE_ROOT)/util/system/spin_wait.cpp\
        $(SOURCE_ROOT)/util/system/src_location.cpp\
        $(SOURCE_ROOT)/util/system/sys_alloc.cpp\
        $(SOURCE_ROOT)/util/system/sysstat.cpp\
        $(SOURCE_ROOT)/util/system/tempfile.cpp\
        $(SOURCE_ROOT)/util/system/thread.cpp\
        $(SOURCE_ROOT)/util/system/tls.cpp\
        $(SOURCE_ROOT)/util/system/types.cpp\
        $(SOURCE_ROOT)/util/system/unaligned_mem.cpp\
        $(SOURCE_ROOT)/util/system/user.cpp\
        $(SOURCE_ROOT)/util/system/utime.cpp\
        $(SOURCE_ROOT)/util/system/yassert.cpp\
        $(SOURCE_ROOT)/util/system/yield.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/util/all_system_2.cpp' util/system/align.cpp util/system/atomic.cpp util/system/byteorder.cpp util/system/cpu_id.cpp util/system/fhandle.cpp util/system/guard.cpp util/system/interrupt_signals.cpp util/system/madvise.cpp util/system/maxlen.cpp util/system/mem_info.cpp util/system/mktemp.cpp util/system/mlock.cpp util/system/mutex.cpp util/system/nice.cpp util/system/pipe.cpp util/system/platform.cpp util/system/progname.cpp util/system/protect.cpp util/system/rusage.cpp util/system/rwlock.cpp util/system/sanitizers.cpp util/system/sem.cpp util/system/shellcommand.cpp util/system/shmat.cpp util/system/sigset.cpp util/system/spinlock.cpp util/system/spin_wait.cpp util/system/src_location.cpp util/system/sys_alloc.cpp util/system/sysstat.cpp util/system/tempfile.cpp util/system/thread.cpp util/system/tls.cpp util/system/types.cpp util/system/unaligned_mem.cpp util/system/user.cpp util/system/utime.cpp util/system/yassert.cpp util/system/yield.cpp

$(BUILD_ROOT)/util/all_thread.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_thread.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_thread.cpp.pic.o' '$(BUILD_ROOT)/util/all_thread.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_thread.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/util/thread/factory.cpp\
        $(SOURCE_ROOT)/util/thread/fwd.cpp\
        $(SOURCE_ROOT)/util/thread/lfqueue.cpp\
        $(SOURCE_ROOT)/util/thread/lfstack.cpp\
        $(SOURCE_ROOT)/util/thread/pool.cpp\
        $(SOURCE_ROOT)/util/thread/singleton.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/util/all_thread.cpp' util/thread/factory.cpp util/thread/fwd.cpp util/thread/lfqueue.cpp util/thread/lfstack.cpp util/thread/pool.cpp util/thread/singleton.cpp

$(BUILD_ROOT)/util/all_util.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_util.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_util.cpp.pic.o' '$(BUILD_ROOT)/util/all_util.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_util.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/util/ysafeptr.cpp\
        $(SOURCE_ROOT)/util/ysaveload.cpp\
        $(SOURCE_ROOT)/util/str_stl.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/util/all_util.cpp' util/ysafeptr.cpp util/ysaveload.cpp util/str_stl.cpp

$(BUILD_ROOT)/util/datetime/parser.rl6.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/datetime/parser.rl6.cpp\

	mkdir -p '$(BUILD_ROOT)/util/datetime'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/datetime/parser.rl6.cpp.pic.o' '$(BUILD_ROOT)/util/datetime/parser.rl6.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/datetime/parser.rl6.cpp\
        ::\
        $(BUILD_ROOT)/contrib/tools/ragel6/ragel6\
        $(SOURCE_ROOT)/util/datetime/parser.rl6\

	mkdir -p '$(BUILD_ROOT)/util/datetime'
	'$(BUILD_ROOT)/contrib/tools/ragel6/ragel6' -CG2 '-I$(SOURCE_ROOT)' -o '$(BUILD_ROOT)/util/datetime/parser.rl6.cpp' '$(SOURCE_ROOT)/util/datetime/parser.rl6'

$(BUILD_ROOT)/contrib/tools/ragel6/ragel6.mf\
        ::\
        $(BUILD_ROOT)/contrib/tools/ragel6/ragel6\

$(BUILD_ROOT)/contrib/tools/ragel6/ragel6\
        ::\
        $(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a\
        $(BUILD_ROOT)/contrib/tools/ragel6/all_cd.cpp.pic.o\
        $(BUILD_ROOT)/contrib/tools/ragel6/all_cs.cpp.pic.o\
        $(BUILD_ROOT)/contrib/tools/ragel6/all_fs.cpp.pic.o\
        $(BUILD_ROOT)/contrib/tools/ragel6/all_go.cpp.pic.o\
        $(BUILD_ROOT)/contrib/tools/ragel6/all_ml.cpp.pic.o\
        $(BUILD_ROOT)/contrib/tools/ragel6/all_other.cpp.pic.o\
        $(BUILD_ROOT)/contrib/tools/ragel6/all_r.cpp.pic.o\
        $(BUILD_ROOT)/contrib/tools/ragel6/rlparse.cpp.pic.o\
        $(BUILD_ROOT)/contrib/tools/ragel6/rlscan.cpp.pic.o\
        $(BUILD_ROOT)/library/lfalloc/liblibrary-lfalloc.a\
        $(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/vcs_info.py\
        $(SOURCE_ROOT)/build/scripts/c_templates/svn_interface.c\
        $(SOURCE_ROOT)/build/scripts/link_exe.py\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name ragel6 -o contrib/tools/ragel6/ragel6.mf -t PROGRAM -Ya,lics GPL-2.0 -Ya,peers contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a library/malloc/api/liblibrary-malloc-api.a library/lfalloc/liblibrary-lfalloc.a
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/vcs_info.py' '$(VCS)/vcs.json' '$(BUILD_ROOT)/contrib/tools/ragel6/__vcs_version__.c' '$(SOURCE_ROOT)/build/scripts/c_templates/svn_interface.c'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/ragel6/__vcs_version__.c.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/__vcs_version__.c' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16
	cd $(BUILD_ROOT) && '$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_exe.py' ${CXX} '$(BUILD_ROOT)/contrib/tools/ragel6/__vcs_version__.c.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/rlparse.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/rlscan.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/all_cd.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/all_cs.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/all_fs.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/all_go.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/all_ml.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/all_r.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/all_other.cpp.pic.o' -o '$(BUILD_ROOT)/contrib/tools/ragel6/ragel6' -rdynamic --target=x86_64-linux-gnu -Wl,--start-group contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a library/malloc/api/liblibrary-malloc-api.a library/lfalloc/liblibrary-lfalloc.a -Wl,--end-group -ldl -lrt -Wl,--no-as-needed -lpthread -nodefaultlibs -lpthread -lc -lm

$(BUILD_ROOT)/contrib/tools/ragel6/all_cd.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/contrib/tools/ragel6/all_cd.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/ragel6/all_cd.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/all_cd.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/ragel6' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/tools/ragel5/aapl' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/tools/ragel6/all_cd.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/contrib/tools/ragel6/cdcodegen.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/cdfflat.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/cdfgoto.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/cdflat.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/cdftable.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/cdgoto.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/cdipgoto.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/cdsplit.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/cdtable.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/contrib/tools/ragel6/all_cd.cpp' contrib/tools/ragel6/cdcodegen.cpp contrib/tools/ragel6/cdfflat.cpp contrib/tools/ragel6/cdfgoto.cpp contrib/tools/ragel6/cdflat.cpp contrib/tools/ragel6/cdftable.cpp contrib/tools/ragel6/cdgoto.cpp contrib/tools/ragel6/cdipgoto.cpp contrib/tools/ragel6/cdsplit.cpp contrib/tools/ragel6/cdtable.cpp

$(BUILD_ROOT)/contrib/tools/ragel6/all_cs.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/contrib/tools/ragel6/all_cs.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/ragel6/all_cs.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/all_cs.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/ragel6' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/tools/ragel5/aapl' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/tools/ragel6/all_cs.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/contrib/tools/ragel6/cscodegen.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/csfflat.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/csfgoto.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/csflat.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/csftable.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/csgoto.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/csipgoto.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/cssplit.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/cstable.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/contrib/tools/ragel6/all_cs.cpp' contrib/tools/ragel6/cscodegen.cpp contrib/tools/ragel6/csfflat.cpp contrib/tools/ragel6/csfgoto.cpp contrib/tools/ragel6/csflat.cpp contrib/tools/ragel6/csftable.cpp contrib/tools/ragel6/csgoto.cpp contrib/tools/ragel6/csipgoto.cpp contrib/tools/ragel6/cssplit.cpp contrib/tools/ragel6/cstable.cpp

$(BUILD_ROOT)/contrib/tools/ragel6/all_fs.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/contrib/tools/ragel6/all_fs.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/ragel6/all_fs.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/all_fs.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/ragel6' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/tools/ragel5/aapl' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/tools/ragel6/all_fs.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/contrib/tools/ragel6/fsmap.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/fsmattach.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/fsmbase.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/fsmgraph.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/fsmmin.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/fsmstate.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/contrib/tools/ragel6/all_fs.cpp' contrib/tools/ragel6/fsmap.cpp contrib/tools/ragel6/fsmattach.cpp contrib/tools/ragel6/fsmbase.cpp contrib/tools/ragel6/fsmgraph.cpp contrib/tools/ragel6/fsmmin.cpp contrib/tools/ragel6/fsmstate.cpp

$(BUILD_ROOT)/contrib/tools/ragel6/all_go.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/contrib/tools/ragel6/all_go.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/ragel6/all_go.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/all_go.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/ragel6' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/tools/ragel5/aapl' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/tools/ragel6/all_go.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/contrib/tools/ragel6/gocodegen.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/gofflat.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/gofgoto.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/goflat.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/goftable.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/gogoto.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/goipgoto.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/gotable.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/gotablish.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/contrib/tools/ragel6/all_go.cpp' contrib/tools/ragel6/gocodegen.cpp contrib/tools/ragel6/gofflat.cpp contrib/tools/ragel6/gofgoto.cpp contrib/tools/ragel6/goflat.cpp contrib/tools/ragel6/goftable.cpp contrib/tools/ragel6/gogoto.cpp contrib/tools/ragel6/goipgoto.cpp contrib/tools/ragel6/gotable.cpp contrib/tools/ragel6/gotablish.cpp

$(BUILD_ROOT)/contrib/tools/ragel6/all_ml.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/contrib/tools/ragel6/all_ml.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/ragel6/all_ml.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/all_ml.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/ragel6' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/tools/ragel5/aapl' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/tools/ragel6/all_ml.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/contrib/tools/ragel6/mlcodegen.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/mlfflat.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/mlfgoto.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/mlflat.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/mlftable.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/mlgoto.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/mltable.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/contrib/tools/ragel6/all_ml.cpp' contrib/tools/ragel6/mlcodegen.cpp contrib/tools/ragel6/mlfflat.cpp contrib/tools/ragel6/mlfgoto.cpp contrib/tools/ragel6/mlflat.cpp contrib/tools/ragel6/mlftable.cpp contrib/tools/ragel6/mlgoto.cpp contrib/tools/ragel6/mltable.cpp

$(BUILD_ROOT)/contrib/tools/ragel6/all_other.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/contrib/tools/ragel6/all_other.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/ragel6/all_other.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/all_other.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/ragel6' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/tools/ragel5/aapl' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/tools/ragel6/all_other.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/contrib/tools/ragel6/common.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/dotcodegen.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/gendata.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/inputdata.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/javacodegen.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/main.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/parsedata.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/parsetree.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/xmlcodegen.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/contrib/tools/ragel6/all_other.cpp' contrib/tools/ragel6/common.cpp contrib/tools/ragel6/dotcodegen.cpp contrib/tools/ragel6/gendata.cpp contrib/tools/ragel6/inputdata.cpp contrib/tools/ragel6/javacodegen.cpp contrib/tools/ragel6/main.cpp contrib/tools/ragel6/parsedata.cpp contrib/tools/ragel6/parsetree.cpp contrib/tools/ragel6/xmlcodegen.cpp

$(BUILD_ROOT)/contrib/tools/ragel6/all_r.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/contrib/tools/ragel6/all_r.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/ragel6/all_r.cpp.pic.o' '$(BUILD_ROOT)/contrib/tools/ragel6/all_r.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/ragel6' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/tools/ragel5/aapl' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/tools/ragel6/all_r.cpp\
        ::\
        $(SOURCE_ROOT)/build/scripts/gen_join_srcs.py\
        $(SOURCE_ROOT)/contrib/tools/ragel6/rbxgoto.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/redfsm.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/rubycodegen.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/rubyfflat.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/rubyflat.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/rubyftable.cpp\
        $(SOURCE_ROOT)/contrib/tools/ragel6/rubytable.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/gen_join_srcs.py' '$(BUILD_ROOT)/contrib/tools/ragel6/all_r.cpp' contrib/tools/ragel6/rbxgoto.cpp contrib/tools/ragel6/redfsm.cpp contrib/tools/ragel6/rubycodegen.cpp contrib/tools/ragel6/rubyfflat.cpp contrib/tools/ragel6/rubyflat.cpp contrib/tools/ragel6/rubyftable.cpp contrib/tools/ragel6/rubytable.cpp

$(BUILD_ROOT)/contrib/tools/ragel6/rlparse.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/ragel6/rlparse.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/ragel6/rlparse.cpp.pic.o' '$(SOURCE_ROOT)/contrib/tools/ragel6/rlparse.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/ragel6' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/tools/ragel5/aapl' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/tools/ragel6/rlscan.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/ragel6/rlscan.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/ragel6'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/ragel6/rlscan.cpp.pic.o' '$(SOURCE_ROOT)/contrib/tools/ragel6/rlscan.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/ragel6' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/tools/ragel5/aapl' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/digest/city.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/util/digest/city.cpp\

	mkdir -p '$(BUILD_ROOT)/util/digest'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/digest/city.cpp.pic.o' '$(SOURCE_ROOT)/util/digest/city.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/random/random.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/util/random/random.cpp\

	mkdir -p '$(BUILD_ROOT)/util/random'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/random/random.cpp.pic.o' '$(SOURCE_ROOT)/util/random/random.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/string/cast.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/util/string/cast.cpp\

	mkdir -p '$(BUILD_ROOT)/util/string'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/string/cast.cpp.pic.o' '$(SOURCE_ROOT)/util/string/cast.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/system/context_x86.o\
        ::\
        $(BUILD_ROOT)/contrib/tools/yasm/yasm\
        $(SOURCE_ROOT)/util/system/context_x86.asm\

	mkdir -p '$(BUILD_ROOT)/util/system'
	'$(BUILD_ROOT)/contrib/tools/yasm/yasm' -f elf64 -D UNIX -D _x86_64_ -D_YASM_ -g dwarf2 -I '$(BUILD_ROOT)' -I '$(SOURCE_ROOT)' -I '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -I '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -I '$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -o '$(BUILD_ROOT)/util/system/context_x86.o' '$(SOURCE_ROOT)/util/system/context_x86.asm'

$(BUILD_ROOT)/contrib/tools/yasm/yasm.mf\
        ::\
        $(BUILD_ROOT)/contrib/tools/yasm/yasm\

$(BUILD_ROOT)/contrib/tools/yasm/yasm\
        ::\
        $(BUILD_ROOT)/contrib/tools/yasm/frontends/yasm/yasm-options.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/frontends/yasm/yasm.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/assocdat.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-align.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-data.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-incbin.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-org.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-reserve.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/bitvect.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/bytecode.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/cmake-module.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/errwarn.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/expr.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/file.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/floatnum.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/hamt.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/insn.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/intnum.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/inttree.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/linemap.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/md5.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/mergesort.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/phash.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/section.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/strcasecmp.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/strsep.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/symrec.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/valparam.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/value.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/xmalloc.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/libyasm/xstrdup.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/arch/lc3b/lc3barch.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/arch/lc3b/lc3bbc.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86arch.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86bc.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86expr.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86id.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-dbgfmt.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-symline.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-type.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-aranges.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-dbgfmt.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-info.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-line.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/null/null-dbgfmt.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/stabs/stabs-dbgfmt.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/gas-token.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/init_plugin.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/lc3bid.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/listfmts/nasm/nasm-listfmt.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/nasm-token.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/bin/bin-objfmt.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/coff/coff-objfmt.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/coff/win64-except.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/dbg/dbg-objfmt.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-objfmt.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-amd64.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-x32.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-x86.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/macho/macho-objfmt.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/rdf/rdf-objfmt.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/xdf/xdf-objfmt.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parse-intel.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parse.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parser.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/nasm/nasm-parse.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/nasm/nasm-parser.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/cpp/cpp-preproc.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/gas/gas-eval.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/gas/gas-preproc.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-eval.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-pp.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-preproc.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasmlib.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/raw/raw-preproc.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/x86cpu.c.pic.o\
        $(BUILD_ROOT)/contrib/tools/yasm/modules/x86regtmod.c.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/vcs_info.py\
        $(SOURCE_ROOT)/build/scripts/c_templates/svn_interface.c\
        $(SOURCE_ROOT)/build/scripts/link_exe.py\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name yasm -o contrib/tools/yasm/yasm.mf -t PROGRAM -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/vcs_info.py' '$(VCS)/vcs.json' '$(BUILD_ROOT)/contrib/tools/yasm/__vcs_version__.c' '$(SOURCE_ROOT)/build/scripts/c_templates/svn_interface.c'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/__vcs_version__.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/__vcs_version__.c' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16
	cd $(BUILD_ROOT) && '$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_exe.py' ${CXX} '$(BUILD_ROOT)/contrib/tools/yasm/__vcs_version__.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/frontends/yasm/yasm-options.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/frontends/yasm/yasm.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/assocdat.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-align.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-data.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-incbin.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-org.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-reserve.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bitvect.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bytecode.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/cmake-module.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/errwarn.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/expr.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/file.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/floatnum.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/hamt.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/insn.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/intnum.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/inttree.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/linemap.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/md5.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/mergesort.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/phash.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/section.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/strcasecmp.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/strsep.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/symrec.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/valparam.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/value.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/xmalloc.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/xstrdup.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/lc3b/lc3barch.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/lc3b/lc3bbc.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86arch.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86bc.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86expr.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86id.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-dbgfmt.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-symline.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-type.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-aranges.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-dbgfmt.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-info.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-line.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/null/null-dbgfmt.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/stabs/stabs-dbgfmt.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/gas-token.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/init_plugin.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/lc3bid.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/listfmts/nasm/nasm-listfmt.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/nasm-token.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/bin/bin-objfmt.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/coff/coff-objfmt.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/coff/win64-except.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/dbg/dbg-objfmt.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-objfmt.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-amd64.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-x32.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-x86.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/macho/macho-objfmt.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/rdf/rdf-objfmt.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/xdf/xdf-objfmt.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parse-intel.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parse.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parser.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/nasm/nasm-parse.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/nasm/nasm-parser.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/cpp/cpp-preproc.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/gas/gas-eval.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/gas/gas-preproc.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-eval.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-pp.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-preproc.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasmlib.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/raw/raw-preproc.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/x86cpu.c.pic.o' '$(BUILD_ROOT)/contrib/tools/yasm/modules/x86regtmod.c.pic.o' -o '$(BUILD_ROOT)/contrib/tools/yasm/yasm' -rdynamic --target=x86_64-linux-gnu -Wl,--start-group -Wl,--end-group -ldl -lrt -Wl,--no-as-needed -nodefaultlibs -lpthread -lc -lm

$(BUILD_ROOT)/contrib/tools/yasm/frontends/yasm/yasm-options.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm/yasm-options.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/frontends/yasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/frontends/yasm/yasm-options.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm/yasm-options.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/frontends/yasm/yasm.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm/yasm.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/frontends/yasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/frontends/yasm/yasm.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm/yasm.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/assocdat.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/assocdat.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/assocdat.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/assocdat.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-align.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/bc-align.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-align.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/bc-align.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-data.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/bc-data.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-data.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/bc-data.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-incbin.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/bc-incbin.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-incbin.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/bc-incbin.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-org.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/bc-org.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-org.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/bc-org.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-reserve.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/bc-reserve.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-reserve.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/bc-reserve.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bitvect.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/bitvect.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bitvect.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/bitvect.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bytecode.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/bytecode.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bytecode.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/bytecode.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/cmake-module.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/cmake-module.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/cmake-module.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/cmake-module.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/errwarn.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/errwarn.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/errwarn.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/errwarn.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/expr.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/expr.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/expr.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/expr.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/file.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/file.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/file.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/file.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/floatnum.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/floatnum.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/floatnum.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/floatnum.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/hamt.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/hamt.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/hamt.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/hamt.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/insn.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/insn.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/insn.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/insn.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/intnum.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/intnum.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/intnum.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/intnum.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/inttree.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/inttree.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/inttree.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/inttree.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/linemap.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/linemap.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/linemap.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/linemap.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/md5.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/md5.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/md5.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/md5.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/mergesort.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/mergesort.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/mergesort.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/mergesort.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/phash.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/phash.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/phash.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/phash.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/section.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/section.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/section.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/section.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/strcasecmp.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/strcasecmp.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/strcasecmp.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/strcasecmp.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/strsep.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/strsep.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/strsep.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/strsep.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/symrec.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/symrec.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/symrec.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/symrec.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/valparam.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/valparam.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/valparam.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/valparam.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/value.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/value.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/value.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/value.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/xmalloc.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/xmalloc.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/xmalloc.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/xmalloc.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/libyasm/xstrdup.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/libyasm/xstrdup.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/libyasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/xstrdup.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/libyasm/xstrdup.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/lc3b/lc3barch.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/arch/lc3b/lc3barch.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/lc3b'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/lc3b/lc3barch.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/arch/lc3b/lc3barch.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/lc3b/lc3bbc.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/arch/lc3b/lc3bbc.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/lc3b'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/lc3b/lc3bbc.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/arch/lc3b/lc3bbc.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86arch.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/arch/x86/x86arch.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86arch.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/arch/x86/x86arch.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86bc.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/arch/x86/x86bc.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86bc.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/arch/x86/x86bc.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86expr.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/arch/x86/x86expr.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86expr.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/arch/x86/x86expr.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86id.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/arch/x86/x86id.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86id.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/arch/x86/x86id.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-dbgfmt.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-dbgfmt.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-dbgfmt.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-dbgfmt.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-symline.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-symline.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-symline.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-symline.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-type.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-type.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-type.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-type.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-aranges.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-aranges.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-aranges.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-aranges.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-dbgfmt.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-dbgfmt.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-dbgfmt.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-dbgfmt.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-info.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-info.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-info.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-info.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-line.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-line.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-line.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-line.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/null/null-dbgfmt.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/null/null-dbgfmt.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/null'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/null/null-dbgfmt.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/null/null-dbgfmt.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/stabs/stabs-dbgfmt.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/stabs/stabs-dbgfmt.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/stabs'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/stabs/stabs-dbgfmt.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/dbgfmts/stabs/stabs-dbgfmt.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/gas-token.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/gas-token.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/gas-token.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/gas-token.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/init_plugin.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/init_plugin.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/init_plugin.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/init_plugin.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/lc3bid.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/lc3bid.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/lc3bid.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/lc3bid.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/listfmts/nasm/nasm-listfmt.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/listfmts/nasm/nasm-listfmt.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/listfmts/nasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/listfmts/nasm/nasm-listfmt.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/listfmts/nasm/nasm-listfmt.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/nasm-token.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/nasm-token.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/nasm-token.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/nasm-token.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/bin/bin-objfmt.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/bin/bin-objfmt.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/bin'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/bin/bin-objfmt.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/bin/bin-objfmt.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/coff/coff-objfmt.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/coff/coff-objfmt.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/coff'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/coff/coff-objfmt.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/coff/coff-objfmt.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/coff/win64-except.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/coff/win64-except.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/coff'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/coff/win64-except.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/coff/win64-except.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/dbg/dbg-objfmt.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/dbg/dbg-objfmt.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/dbg'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/dbg/dbg-objfmt.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/dbg/dbg-objfmt.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-objfmt.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-objfmt.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-objfmt.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-objfmt.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-amd64.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-amd64.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-amd64.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-amd64.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-x32.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-x32.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-x32.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-x32.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-x86.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-x86.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-x86.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-x86.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/macho/macho-objfmt.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/macho/macho-objfmt.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/macho'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/macho/macho-objfmt.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/macho/macho-objfmt.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/rdf/rdf-objfmt.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/rdf/rdf-objfmt.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/rdf'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/rdf/rdf-objfmt.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/rdf/rdf-objfmt.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/xdf/xdf-objfmt.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/xdf/xdf-objfmt.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/xdf'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/xdf/xdf-objfmt.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/objfmts/xdf/xdf-objfmt.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parse-intel.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parse-intel.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parse-intel.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parse-intel.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parse.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parse.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parse.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parse.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parser.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parser.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parser.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parser.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/nasm/nasm-parse.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/parsers/nasm/nasm-parse.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/nasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/nasm/nasm-parse.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/parsers/nasm/nasm-parse.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/nasm/nasm-parser.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/parsers/nasm/nasm-parser.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/nasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/nasm/nasm-parser.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/parsers/nasm/nasm-parser.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/cpp/cpp-preproc.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/cpp/cpp-preproc.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/cpp'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/cpp/cpp-preproc.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/cpp/cpp-preproc.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/gas/gas-eval.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/gas/gas-eval.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/gas'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/gas/gas-eval.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/gas/gas-eval.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/gas/gas-preproc.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/gas/gas-preproc.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/gas'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/gas/gas-preproc.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/gas/gas-preproc.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-eval.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-eval.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-eval.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-eval.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-pp.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-pp.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-pp.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-pp.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-preproc.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-preproc.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-preproc.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-preproc.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasmlib.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasmlib.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasmlib.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasmlib.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/raw/raw-preproc.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/raw/raw-preproc.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/raw'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/raw/raw-preproc.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/preprocs/raw/raw-preproc.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/x86cpu.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/x86cpu.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/x86cpu.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/x86cpu.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/tools/yasm/modules/x86regtmod.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/tools/yasm/modules/x86regtmod.c\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/yasm/modules'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/yasm/modules/x86regtmod.c.pic.o' '$(SOURCE_ROOT)/contrib/tools/yasm/modules/x86regtmod.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/tools/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/frontends/yasm' '-I$(SOURCE_ROOT)/contrib/tools/yasm/modules' -pipe -m64 -O3 -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DHAVE_CONFIG_H -DYASM_LIB_SOURCE -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/util/system/mktemp_system.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/util/system/mktemp_system.cpp\

	mkdir -p '$(BUILD_ROOT)/util/system'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/system/mktemp_system.cpp.pic.o' '$(SOURCE_ROOT)/util/system/mktemp_system.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/system/strlcpy.c.pic.o\
        ::\
        $(SOURCE_ROOT)/util/system/strlcpy.c\

	mkdir -p '$(BUILD_ROOT)/util/system'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/system/strlcpy.c.pic.o' '$(SOURCE_ROOT)/util/system/strlcpy.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/util/system/valgrind.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/util/system/valgrind.cpp\

	mkdir -p '$(BUILD_ROOT)/util/system'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/system/valgrind.cpp.pic.o' '$(SOURCE_ROOT)/util/system/valgrind.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/data_types/libcatboost-libs-data_types.a.mf\
        ::\
        $(BUILD_ROOT)/catboost/libs/data_types/libcatboost-libs-data_types.a\

$(BUILD_ROOT)/catboost/libs/data_types/libcatboost-libs-data_types.a\
        ::\
        $(BUILD_ROOT)/catboost/libs/data_types/pair.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/data_types/text.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/data_types'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name catboost-libs-data_types -o catboost/libs/data_types/libcatboost-libs-data_types.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/catboost/libs/data_types/libcatboost-libs-data_types.a' '$(BUILD_ROOT)/catboost/libs/data_types/pair.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/data_types/text.cpp.pic.o'

$(BUILD_ROOT)/catboost/libs/data_types/pair.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/data_types/pair.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/data_types'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/data_types/pair.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/data_types/pair.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/data_types/text.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/data_types/text.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/data_types'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/data_types/text.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/data_types/text.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/data_util/exists_checker.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/data_util/exists_checker.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/data_util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/data_util/exists_checker.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/data_util/exists_checker.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/data_util/libcatboost-libs-data_util.a.mf\
        ::\
        $(BUILD_ROOT)/catboost/libs/data_util/libcatboost-libs-data_util.a\

$(BUILD_ROOT)/catboost/libs/data_util/libcatboost-libs-data_util.a\
        ::\
        $(BUILD_ROOT)/catboost/libs/data_util/path_with_scheme.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/data_util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name catboost-libs-data_util -o catboost/libs/data_util/libcatboost-libs-data_util.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/catboost/libs/data_util/libcatboost-libs-data_util.a' '$(BUILD_ROOT)/catboost/libs/data_util/path_with_scheme.cpp.pic.o'

$(BUILD_ROOT)/catboost/libs/data_util/path_with_scheme.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/data_util/path_with_scheme.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/data_util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/data_util/path_with_scheme.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/data_util/path_with_scheme.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/data_util/line_data_reader.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/data_util/line_data_reader.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/data_util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/data_util/line_data_reader.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/data_util/line_data_reader.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/libcatboost-libs-helpers.a.mf\
        ::\
        $(BUILD_ROOT)/catboost/libs/helpers/libcatboost-libs-helpers.a\

$(BUILD_ROOT)/catboost/libs/helpers/libcatboost-libs-helpers.a\
        ::\
        $(BUILD_ROOT)/catboost/libs/helpers/array_subset.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/borders_io.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/checksum.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/clear_array.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/compare.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/compression.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/cpu_random.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/dbg_output.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/dense_hash.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/dense_hash_view.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/double_array_iterator.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/dynamic_iterator.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/element_range.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/exception.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/guid.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/hash.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/int_cast.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/interrupt.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/map_merge.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/math_utils.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/matrix.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/maybe_data.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/maybe_owning_array_holder.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/mem_usage.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/parallel_tasks.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/permutation.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/power_hash.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/progress_helper.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/query_info_helper.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/resource_constrained_executor.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/resource_holder.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/restorable_rng.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/serialization.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/set.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/sparse_array.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/sparse_array.h_serialized.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/vec_list.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/vector_helpers.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/wx_test.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/helpers/xml_output.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name catboost-libs-helpers -o catboost/libs/helpers/libcatboost-libs-helpers.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/catboost/libs/helpers/libcatboost-libs-helpers.a' '$(BUILD_ROOT)/catboost/libs/helpers/array_subset.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/borders_io.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/checksum.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/clear_array.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/compare.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/compression.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/cpu_random.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/dbg_output.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/dense_hash.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/dense_hash_view.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/double_array_iterator.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/dynamic_iterator.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/element_range.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/exception.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/guid.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/hash.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/int_cast.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/interrupt.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/map_merge.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/math_utils.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/matrix.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/maybe_data.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/maybe_owning_array_holder.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/mem_usage.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/parallel_tasks.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/power_hash.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/progress_helper.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/permutation.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/query_info_helper.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/resource_constrained_executor.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/resource_holder.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/restorable_rng.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/serialization.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/set.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/sparse_array.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/vec_list.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/vector_helpers.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/wx_test.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/xml_output.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/sparse_array.h_serialized.cpp.pic.o'

$(BUILD_ROOT)/catboost/libs/helpers/array_subset.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/array_subset.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/array_subset.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/array_subset.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/borders_io.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/borders_io.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/borders_io.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/borders_io.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/checksum.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/checksum.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/checksum.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/checksum.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/clear_array.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/clear_array.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/clear_array.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/clear_array.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/compare.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/compare.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/compare.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/compare.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/compression.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/compression.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/compression.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/compression.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/cpu_random.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/cpu_random.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/cpu_random.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/cpu_random.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/dbg_output.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/dbg_output.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/dbg_output.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/dbg_output.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/dense_hash.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/dense_hash.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/dense_hash.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/dense_hash.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/dense_hash_view.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/dense_hash_view.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/dense_hash_view.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/dense_hash_view.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/double_array_iterator.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/double_array_iterator.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/double_array_iterator.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/double_array_iterator.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/dynamic_iterator.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/dynamic_iterator.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/dynamic_iterator.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/dynamic_iterator.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/element_range.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/element_range.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/element_range.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/element_range.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/exception.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/exception.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/exception.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/exception.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/guid.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/guid.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/guid.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/guid.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/hash.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/hash.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/hash.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/hash.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/int_cast.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/int_cast.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/int_cast.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/int_cast.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/interrupt.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/interrupt.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/interrupt.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/interrupt.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/map_merge.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/map_merge.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/map_merge.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/map_merge.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/math_utils.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/math_utils.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/math_utils.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/math_utils.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/matrix.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/matrix.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/matrix.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/matrix.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/maybe_data.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/maybe_data.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/maybe_data.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/maybe_data.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/maybe_owning_array_holder.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/maybe_owning_array_holder.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/maybe_owning_array_holder.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/maybe_owning_array_holder.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/mem_usage.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/mem_usage.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/mem_usage.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/mem_usage.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/parallel_tasks.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/parallel_tasks.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/parallel_tasks.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/parallel_tasks.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/permutation.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/permutation.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/permutation.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/permutation.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/power_hash.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/power_hash.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/power_hash.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/power_hash.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/progress_helper.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/progress_helper.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/progress_helper.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/progress_helper.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/query_info_helper.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/query_info_helper.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/query_info_helper.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/query_info_helper.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/resource_constrained_executor.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/resource_constrained_executor.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/resource_constrained_executor.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/resource_constrained_executor.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/resource_holder.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/resource_holder.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/resource_holder.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/resource_holder.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/restorable_rng.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/restorable_rng.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/restorable_rng.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/restorable_rng.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/serialization.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/serialization.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/serialization.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/serialization.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/set.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/set.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/set.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/set.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/sparse_array.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/sparse_array.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/sparse_array.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/sparse_array.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/sparse_array.h_serialized.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/catboost/libs/helpers/sparse_array.h_serialized.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/sparse_array.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/helpers/sparse_array.h_serialized.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/sparse_array.h_serialized.cpp\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\
        $(SOURCE_ROOT)/catboost/libs/helpers/sparse_array.h\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	'$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' '$(SOURCE_ROOT)/catboost/libs/helpers/sparse_array.h' --include-path catboost/libs/helpers/sparse_array.h --output '$(BUILD_ROOT)/catboost/libs/helpers/sparse_array.h_serialized.cpp'

$(BUILD_ROOT)/catboost/libs/helpers/vec_list.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/vec_list.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/vec_list.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/vec_list.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/vector_helpers.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/vector_helpers.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/vector_helpers.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/vector_helpers.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/wx_test.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/wx_test.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/wx_test.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/wx_test.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/helpers/xml_output.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/helpers/xml_output.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/helpers'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/helpers/xml_output.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/helpers/xml_output.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/index_range/libcatboost-libs-index_range.a.mf\
        ::\
        $(BUILD_ROOT)/catboost/libs/index_range/libcatboost-libs-index_range.a\

$(BUILD_ROOT)/catboost/libs/index_range/libcatboost-libs-index_range.a\
        ::\
        $(BUILD_ROOT)/catboost/libs/index_range/index_range.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/index_range'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name catboost-libs-index_range -o catboost/libs/index_range/libcatboost-libs-index_range.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/catboost/libs/index_range/libcatboost-libs-index_range.a' '$(BUILD_ROOT)/catboost/libs/index_range/index_range.cpp.pic.o'

$(BUILD_ROOT)/catboost/libs/index_range/index_range.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/index_range/index_range.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/index_range'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/index_range/index_range.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/index_range/index_range.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/logging/libcatboost-libs-logging.a.mf\
        ::\
        $(BUILD_ROOT)/catboost/libs/logging/libcatboost-libs-logging.a\

$(BUILD_ROOT)/catboost/libs/logging/libcatboost-libs-logging.a\
        ::\
        $(BUILD_ROOT)/catboost/libs/logging/logging.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/logging/logging_level.h_serialized.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/logging'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name catboost-libs-logging -o catboost/libs/logging/libcatboost-libs-logging.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/catboost/libs/logging/libcatboost-libs-logging.a' '$(BUILD_ROOT)/catboost/libs/logging/logging.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/logging/logging_level.h_serialized.cpp.pic.o'

$(BUILD_ROOT)/catboost/libs/logging/logging.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/logging/logging.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/logging'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/logging/logging.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/logging/logging.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/logging/logging_level.h_serialized.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/catboost/libs/logging/logging_level.h_serialized.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/logging'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/logging/logging_level.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/logging/logging_level.h_serialized.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/logging/logging_level.h_serialized.cpp\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\
        $(SOURCE_ROOT)/catboost/libs/logging/logging_level.h\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/logging'
	'$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' '$(SOURCE_ROOT)/catboost/libs/logging/logging_level.h' --include-path catboost/libs/logging/logging_level.h --output '$(BUILD_ROOT)/catboost/libs/logging/logging_level.h_serialized.cpp'

$(BUILD_ROOT)/catboost/libs/model/thin/__/model_import_interface.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/model/model_import_interface.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/model_import_interface.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/model_import_interface.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/liblibs-model-thin.a.mf\
        ::\
        $(BUILD_ROOT)/catboost/libs/model/thin/liblibs-model-thin.a\

$(BUILD_ROOT)/catboost/libs/model/thin/liblibs-model-thin.a\
        ::\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/evaluator_impl.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/formula_evaluator.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/quantization.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_data.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_helpers.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_provider.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_value_table.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/cuda/no_cuda_stub.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/eval_processing.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/features.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/model.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/model_build_helper.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/online_ctr.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/__/static_ctr_provider.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/ctr_provider.h_serialized.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/enums.h_serialized.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/features.h_serialized.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/model/thin/split.h_serialized.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name libs-model-thin -o catboost/libs/model/thin/liblibs-model-thin.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/catboost/libs/model/thin/liblibs-model-thin.a' '$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_data.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_helpers.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_provider.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_value_table.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/__/eval_processing.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/__/features.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/__/model.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/__/online_ctr.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/__/static_ctr_provider.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/__/model_build_helper.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/evaluator_impl.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/formula_evaluator.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/quantization.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/__/cuda/no_cuda_stub.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/ctr_provider.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/enums.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/features.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/split.h_serialized.cpp.pic.o'

$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/evaluator_impl.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/model/cpu/evaluator_impl.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/evaluator_impl.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/cpu/evaluator_impl.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/formula_evaluator.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/model/cpu/formula_evaluator.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/formula_evaluator.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/cpu/formula_evaluator.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/quantization.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/model/cpu/quantization.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/quantization.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/cpu/quantization.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_data.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/model/ctr_data.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_data.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/ctr_data.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_helpers.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/model/ctr_helpers.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_helpers.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/ctr_helpers.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_provider.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/model/ctr_provider.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_provider.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/ctr_provider.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_value_table.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/ctr_data.fbs.h\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/features.fbs.h\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/model.fbs.h\
        $(SOURCE_ROOT)/catboost/libs/model/ctr_value_table.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_value_table.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/ctr_value_table.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/flatbuffers/ctr_data.bfbs\
        ::\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/ctr_data.fbs.h\

$(BUILD_ROOT)/catboost/libs/model/flatbuffers/ctr_data.fbs.h\
        ::\
        $(BUILD_ROOT)/contrib/tools/flatc/flatc\
        $(SOURCE_ROOT)/catboost/libs/model/flatbuffers/ctr_data.fbs\
        $(SOURCE_ROOT)/build/scripts/stdout2stderr.py\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/flatbuffers'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/plugins/_unpickler.py' --src-root '$(SOURCE_ROOT)' --build-root '$(BUILD_ROOT)' --data gAJjZmxhdGMKRmxhdGMKcQApgXEBfXECKFUKX2luY2xfZGlyc3EDXXEEKFUCJFNxBVUCJEJxBmVVBV9wYXRocQdVLyRTL2NhdGJvb3N0L2xpYnMvbW9kZWwvZmxhdGJ1ZmZlcnMvY3RyX2RhdGEuZmJzcQh1hXEJYi4= --tools 1 '$(BUILD_ROOT)/contrib/tools/flatc/flatc'

$(BUILD_ROOT)/contrib/tools/flatc/flatc.mf\
        ::\
        $(BUILD_ROOT)/contrib/tools/flatc/flatc\

$(BUILD_ROOT)/contrib/tools/flatc/flatc\
        ::\
        $(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/liblibs-flatbuffers-flatc.a\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a\
        $(BUILD_ROOT)/contrib/tools/flatc/__/__/libs/flatbuffers/src/flatc_main.cpp.pic.o\
        $(BUILD_ROOT)/library/lfalloc/liblibrary-lfalloc.a\
        $(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/vcs_info.py\
        $(SOURCE_ROOT)/build/scripts/c_templates/svn_interface.c\
        $(SOURCE_ROOT)/build/scripts/link_exe.py\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/flatc'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name flatc -o contrib/tools/flatc/flatc.mf -t PROGRAM -Ya,lics -Ya,peers contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a library/malloc/api/liblibrary-malloc-api.a library/lfalloc/liblibrary-lfalloc.a contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a contrib/libs/flatbuffers/flatc/liblibs-flatbuffers-flatc.a
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/vcs_info.py' '$(VCS)/vcs.json' '$(BUILD_ROOT)/contrib/tools/flatc/__vcs_version__.c' '$(SOURCE_ROOT)/build/scripts/c_templates/svn_interface.c'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/flatc/__vcs_version__.c.pic.o' '$(BUILD_ROOT)/contrib/tools/flatc/__vcs_version__.c' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16
	cd $(BUILD_ROOT) && '$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_exe.py' ${CXX} '$(BUILD_ROOT)/contrib/tools/flatc/__vcs_version__.c.pic.o' '$(BUILD_ROOT)/contrib/tools/flatc/__/__/libs/flatbuffers/src/flatc_main.cpp.pic.o' -o '$(BUILD_ROOT)/contrib/tools/flatc/flatc' -rdynamic --target=x86_64-linux-gnu -Wl,--start-group contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a library/malloc/api/liblibrary-malloc-api.a library/lfalloc/liblibrary-lfalloc.a contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a contrib/libs/flatbuffers/flatc/liblibs-flatbuffers-flatc.a -Wl,--end-group -ldl -lrt -Wl,--no-as-needed -lpthread -nodefaultlibs -lpthread -lc -lm

$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/liblibs-flatbuffers-flatc.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/liblibs-flatbuffers-flatc.a\

$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/liblibs-flatbuffers-flatc.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/code_generators.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/flatc.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_cpp.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_fbs.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_general.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_go.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_json_schema.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_python.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name libs-flatbuffers-flatc -o contrib/libs/flatbuffers/flatc/liblibs-flatbuffers-flatc.a.mf -t LIBRARY -Ya,lics APACHE2 -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/liblibs-flatbuffers-flatc.a' '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/code_generators.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/flatc.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_cpp.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_fbs.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_general.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_python.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_go.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_json_schema.cpp.pic.o'

$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/code_generators.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/code_generators.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/code_generators.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/code_generators.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/flatc.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/flatc.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/flatc.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/flatc.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_cpp.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_cpp.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_cpp.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_cpp.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_fbs.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_fbs.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_fbs.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_fbs.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_general.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_general.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_general.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_general.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_go.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_go.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_go.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_go.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_json_schema.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_json_schema.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_json_schema.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_json_schema.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_python.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_python.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_python.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_python.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a\

$(BUILD_ROOT)/contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_gen_text.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_parser.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/src/reflection.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/src/util.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name contrib-libs-flatbuffers -o contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a.mf -t LIBRARY -Ya,lics APACHE2 -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a' '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_parser.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_gen_text.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/reflection.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/util.cpp.pic.o'

$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_gen_text.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_text.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_gen_text.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_text.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_parser.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_parser.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_parser.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_parser.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/src/reflection.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/reflection.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/reflection.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/reflection.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/src/util.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/util.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/util.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/util.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/tools/flatc/__/__/libs/flatbuffers/src/flatc_main.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/flatc_main.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/tools/flatc/__/__/libs/flatbuffers/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/tools/flatc/__/__/libs/flatbuffers/src/flatc_main.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/flatc_main.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/flatbuffers/features.bfbs\
        ::\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/features.fbs.h\

$(BUILD_ROOT)/catboost/libs/model/flatbuffers/features.fbs.h\
        ::\
        $(BUILD_ROOT)/contrib/tools/flatc/flatc\
        $(SOURCE_ROOT)/catboost/libs/model/flatbuffers/features.fbs\
        $(SOURCE_ROOT)/build/scripts/stdout2stderr.py\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/flatbuffers'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/plugins/_unpickler.py' --src-root '$(SOURCE_ROOT)' --build-root '$(BUILD_ROOT)' --data gAJjZmxhdGMKRmxhdGMKcQApgXEBfXECKFUKX2luY2xfZGlyc3EDXXEEKFUCJFNxBVUCJEJxBmVVBV9wYXRocQdVLyRTL2NhdGJvb3N0L2xpYnMvbW9kZWwvZmxhdGJ1ZmZlcnMvZmVhdHVyZXMuZmJzcQh1hXEJYi4= --tools 1 '$(BUILD_ROOT)/contrib/tools/flatc/flatc'

$(BUILD_ROOT)/catboost/libs/model/flatbuffers/model.bfbs\
        ::\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/model.fbs.h\

$(BUILD_ROOT)/catboost/libs/model/flatbuffers/model.fbs.h\
        ::\
        $(BUILD_ROOT)/contrib/tools/flatc/flatc\
        $(SOURCE_ROOT)/catboost/libs/model/flatbuffers/model.fbs\
        $(SOURCE_ROOT)/build/scripts/stdout2stderr.py\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/flatbuffers'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/plugins/_unpickler.py' --src-root '$(SOURCE_ROOT)' --build-root '$(BUILD_ROOT)' --data gAJjZmxhdGMKRmxhdGMKcQApgXEBfXECKFUKX2luY2xfZGlyc3EDXXEEKFUCJFNxBVUCJEJxBmVVBV9wYXRocQdVLCRTL2NhdGJvb3N0L2xpYnMvbW9kZWwvZmxhdGJ1ZmZlcnMvbW9kZWwuZmJzcQh1hXEJYi4= --tools 1 '$(BUILD_ROOT)/contrib/tools/flatc/flatc'

$(BUILD_ROOT)/catboost/libs/model/thin/__/cuda/no_cuda_stub.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/model/cuda/no_cuda_stub.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__/cuda'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/cuda/no_cuda_stub.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/cuda/no_cuda_stub.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/__/eval_processing.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/model/eval_processing.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/eval_processing.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/eval_processing.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/__/features.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/ctr_data.fbs.h\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/features.fbs.h\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/model.fbs.h\
        $(SOURCE_ROOT)/catboost/libs/model/features.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/features.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/features.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/__/model.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/ctr_data.fbs.h\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/features.fbs.h\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/model.fbs.h\
        $(SOURCE_ROOT)/catboost/libs/model/model.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/model.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/model.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/__/model_build_helper.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/model/model_build_helper.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/model_build_helper.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/model_build_helper.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/__/online_ctr.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/ctr_data.fbs.h\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/features.fbs.h\
        $(BUILD_ROOT)/catboost/libs/model/flatbuffers/model.fbs.h\
        $(SOURCE_ROOT)/catboost/libs/model/online_ctr.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/online_ctr.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/online_ctr.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/__/static_ctr_provider.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/model/static_ctr_provider.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin/__'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/__/static_ctr_provider.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model/static_ctr_provider.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/ctr_provider.h_serialized.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/catboost/libs/model/thin/ctr_provider.h_serialized.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/ctr_provider.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/ctr_provider.h_serialized.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/ctr_provider.h_serialized.cpp\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\
        $(SOURCE_ROOT)/catboost/libs/model/ctr_provider.h\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin'
	'$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' '$(SOURCE_ROOT)/catboost/libs/model/ctr_provider.h' --include-path catboost/libs/model/ctr_provider.h --output '$(BUILD_ROOT)/catboost/libs/model/thin/ctr_provider.h_serialized.cpp'

$(BUILD_ROOT)/catboost/libs/model/thin/enums.h_serialized.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/catboost/libs/model/thin/enums.h_serialized.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/enums.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/enums.h_serialized.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/enums.h_serialized.cpp\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\
        $(SOURCE_ROOT)/catboost/libs/model/enums.h\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin'
	'$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' '$(SOURCE_ROOT)/catboost/libs/model/enums.h' --include-path catboost/libs/model/enums.h --output '$(BUILD_ROOT)/catboost/libs/model/thin/enums.h_serialized.cpp'

$(BUILD_ROOT)/catboost/libs/model/thin/features.h_serialized.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/catboost/libs/model/thin/features.h_serialized.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/features.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/features.h_serialized.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/features.h_serialized.cpp\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\
        $(SOURCE_ROOT)/catboost/libs/model/features.h\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin'
	'$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' '$(SOURCE_ROOT)/catboost/libs/model/features.h' --include-path catboost/libs/model/features.h --output '$(BUILD_ROOT)/catboost/libs/model/thin/features.h_serialized.cpp'

$(BUILD_ROOT)/catboost/libs/model/thin/split.h_serialized.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/catboost/libs/model/thin/split.h_serialized.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model/thin/split.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/model/thin/split.h_serialized.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/model/thin/split.h_serialized.cpp\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\
        $(SOURCE_ROOT)/catboost/libs/model/split.h\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model/thin'
	'$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' '$(SOURCE_ROOT)/catboost/libs/model/split.h' --include-path catboost/libs/model/split.h --output '$(BUILD_ROOT)/catboost/libs/model/thin/split.h_serialized.cpp'

$(BUILD_ROOT)/catboost/libs/model_interface/c_api.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/model_interface/c_api.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/model_interface'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/model_interface/c_api.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/model_interface/c_api.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/libcatboost-libs-options.a.mf\
        ::\
        $(BUILD_ROOT)/catboost/libs/options/libcatboost-libs-options.a\

$(BUILD_ROOT)/catboost/libs/options/libcatboost-libs-options.a\
        ::\
        $(BUILD_ROOT)/catboost/libs/options/analytical_mode_params.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/binarization_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/boosting_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/bootstrap_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/cat_feature_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/catboost_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/check_train_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/cross_validation_params.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/data_processing_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/defaults_helper.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/enum_helpers.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/enums.h_serialized.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/feature_eval_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/json_helper.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/json_helper.h_serialized.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/load_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/loss_description.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/metric_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/model_based_eval_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/multiclass_label_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/oblivious_tree_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/option.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/output_file_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/overfitting_detector_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/plain_options_helper.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/split_params.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/system_options.cpp.pic.o\
        $(BUILD_ROOT)/catboost/libs/options/text_feature_options.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name catboost-libs-options -o catboost/libs/options/libcatboost-libs-options.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/catboost/libs/options/libcatboost-libs-options.a' '$(BUILD_ROOT)/catboost/libs/options/analytical_mode_params.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/binarization_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/boosting_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/bootstrap_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/cat_feature_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/catboost_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/check_train_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/cross_validation_params.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/data_processing_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/defaults_helper.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/enum_helpers.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/feature_eval_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/json_helper.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/load_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/loss_description.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/metric_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/model_based_eval_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/multiclass_label_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/oblivious_tree_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/option.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/output_file_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/overfitting_detector_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/plain_options_helper.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/split_params.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/system_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/text_feature_options.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/enums.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/json_helper.h_serialized.cpp.pic.o'

$(BUILD_ROOT)/catboost/libs/options/analytical_mode_params.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/analytical_mode_params.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/analytical_mode_params.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/analytical_mode_params.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/binarization_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/binarization_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/binarization_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/binarization_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/boosting_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/boosting_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/boosting_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/boosting_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/bootstrap_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/bootstrap_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/bootstrap_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/bootstrap_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/cat_feature_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/cat_feature_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/cat_feature_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/cat_feature_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/catboost_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/catboost_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/catboost_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/catboost_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/check_train_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/check_train_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/check_train_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/check_train_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/cross_validation_params.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/cross_validation_params.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/cross_validation_params.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/cross_validation_params.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/data_processing_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/data_processing_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/data_processing_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/data_processing_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/defaults_helper.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/defaults_helper.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/defaults_helper.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/defaults_helper.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/enum_helpers.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/enum_helpers.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/enum_helpers.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/enum_helpers.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/enums.h_serialized.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/catboost/libs/options/enums.h_serialized.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/enums.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/enums.h_serialized.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/enums.h_serialized.cpp\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\
        $(SOURCE_ROOT)/catboost/libs/options/enums.h\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	'$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' '$(SOURCE_ROOT)/catboost/libs/options/enums.h' --include-path catboost/libs/options/enums.h --output '$(BUILD_ROOT)/catboost/libs/options/enums.h_serialized.cpp'

$(BUILD_ROOT)/catboost/libs/options/feature_eval_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/feature_eval_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/feature_eval_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/feature_eval_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/json_helper.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/json_helper.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/json_helper.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/json_helper.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/json_helper.h_serialized.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/catboost/libs/options/json_helper.h_serialized.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/json_helper.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/catboost/libs/options/json_helper.h_serialized.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/json_helper.h_serialized.cpp\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\
        $(SOURCE_ROOT)/catboost/libs/options/json_helper.h\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	'$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' '$(SOURCE_ROOT)/catboost/libs/options/json_helper.h' --include-path catboost/libs/options/json_helper.h --output '$(BUILD_ROOT)/catboost/libs/options/json_helper.h_serialized.cpp'

$(BUILD_ROOT)/catboost/libs/options/load_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/load_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/load_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/load_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/loss_description.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/loss_description.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/loss_description.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/loss_description.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/metric_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/metric_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/metric_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/metric_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/model_based_eval_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/model_based_eval_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/model_based_eval_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/model_based_eval_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/multiclass_label_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/multiclass_label_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/multiclass_label_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/multiclass_label_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/oblivious_tree_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/oblivious_tree_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/oblivious_tree_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/oblivious_tree_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/option.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/option.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/option.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/option.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/output_file_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/output_file_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/output_file_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/output_file_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/overfitting_detector_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/overfitting_detector_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/overfitting_detector_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/overfitting_detector_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/plain_options_helper.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/plain_options_helper.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/plain_options_helper.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/plain_options_helper.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/split_params.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/split_params.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/split_params.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/split_params.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/system_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/system_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/system_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/system_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/catboost/libs/options/text_feature_options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/catboost/libs/options/text_feature_options.cpp\

	mkdir -p '$(BUILD_ROOT)/catboost/libs/options'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/catboost/libs/options/text_feature_options.cpp.pic.o' '$(SOURCE_ROOT)/catboost/libs/options/text_feature_options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/base64/avx2/liblibs-base64-avx2.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/base64/avx2/liblibs-base64-avx2.a\

$(BUILD_ROOT)/contrib/libs/base64/avx2/liblibs-base64-avx2.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/base64/avx2/codec_avx2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/base64/avx2/lib.c.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/avx2'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name libs-base64-avx2 -o contrib/libs/base64/avx2/liblibs-base64-avx2.a.mf -t LIBRARY -Ya,lics BSD2 -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/base64/avx2/liblibs-base64-avx2.a' '$(BUILD_ROOT)/contrib/libs/base64/avx2/codec_avx2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/base64/avx2/lib.c.pic.o'

$(BUILD_ROOT)/contrib/libs/base64/avx2/codec_avx2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/base64/avx2/codec_avx2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/avx2'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/base64/avx2/codec_avx2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/base64/avx2/codec_avx2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -mavx2 -std=c11

$(BUILD_ROOT)/contrib/libs/base64/avx2/lib.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/base64/avx2/lib.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/avx2'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/base64/avx2/lib.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/base64/avx2/lib.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -mavx2 -std=c11

$(BUILD_ROOT)/contrib/libs/base64/neon32/liblibs-base64-neon32.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/base64/neon32/liblibs-base64-neon32.a\

$(BUILD_ROOT)/contrib/libs/base64/neon32/liblibs-base64-neon32.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/base64/neon32/codec_neon32.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/base64/neon32/lib.c.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/neon32'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name libs-base64-neon32 -o contrib/libs/base64/neon32/liblibs-base64-neon32.a.mf -t LIBRARY -Ya,lics BSD2 -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/base64/neon32/liblibs-base64-neon32.a' '$(BUILD_ROOT)/contrib/libs/base64/neon32/codec_neon32.c.pic.o' '$(BUILD_ROOT)/contrib/libs/base64/neon32/lib.c.pic.o'

$(BUILD_ROOT)/contrib/libs/base64/neon32/codec_neon32.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/base64/neon32/codec_neon32.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/neon32'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/base64/neon32/codec_neon32.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/base64/neon32/codec_neon32.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c11

$(BUILD_ROOT)/contrib/libs/base64/neon32/lib.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/base64/neon32/lib.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/neon32'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/base64/neon32/lib.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/base64/neon32/lib.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c11

$(BUILD_ROOT)/contrib/libs/base64/neon64/liblibs-base64-neon64.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/base64/neon64/liblibs-base64-neon64.a\

$(BUILD_ROOT)/contrib/libs/base64/neon64/liblibs-base64-neon64.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/base64/neon64/codec_neon64.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/base64/neon64/lib.c.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/neon64'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name libs-base64-neon64 -o contrib/libs/base64/neon64/liblibs-base64-neon64.a.mf -t LIBRARY -Ya,lics BSD2 -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/base64/neon64/liblibs-base64-neon64.a' '$(BUILD_ROOT)/contrib/libs/base64/neon64/codec_neon64.c.pic.o' '$(BUILD_ROOT)/contrib/libs/base64/neon64/lib.c.pic.o'

$(BUILD_ROOT)/contrib/libs/base64/neon64/codec_neon64.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/base64/neon64/codec_neon64.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/neon64'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/base64/neon64/codec_neon64.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/base64/neon64/codec_neon64.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/base64/neon64/lib.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/base64/neon64/lib.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/neon64'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/base64/neon64/lib.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/base64/neon64/lib.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/base64/plain32/liblibs-base64-plain32.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/base64/plain32/liblibs-base64-plain32.a\

$(BUILD_ROOT)/contrib/libs/base64/plain32/liblibs-base64-plain32.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/base64/plain32/codec_plain.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/base64/plain32/lib.c.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/plain32'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name libs-base64-plain32 -o contrib/libs/base64/plain32/liblibs-base64-plain32.a.mf -t LIBRARY -Ya,lics BSD2 -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/base64/plain32/liblibs-base64-plain32.a' '$(BUILD_ROOT)/contrib/libs/base64/plain32/codec_plain.c.pic.o' '$(BUILD_ROOT)/contrib/libs/base64/plain32/lib.c.pic.o'

$(BUILD_ROOT)/contrib/libs/base64/plain32/codec_plain.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/base64/plain32/codec_plain.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/plain32'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/base64/plain32/codec_plain.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/base64/plain32/codec_plain.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c11

$(BUILD_ROOT)/contrib/libs/base64/plain32/lib.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/base64/plain32/lib.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/plain32'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/base64/plain32/lib.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/base64/plain32/lib.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c11

$(BUILD_ROOT)/contrib/libs/base64/plain64/liblibs-base64-plain64.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/base64/plain64/liblibs-base64-plain64.a\

$(BUILD_ROOT)/contrib/libs/base64/plain64/liblibs-base64-plain64.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/base64/plain64/codec_plain.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/base64/plain64/lib.c.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/plain64'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name libs-base64-plain64 -o contrib/libs/base64/plain64/liblibs-base64-plain64.a.mf -t LIBRARY -Ya,lics BSD2 -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/base64/plain64/liblibs-base64-plain64.a' '$(BUILD_ROOT)/contrib/libs/base64/plain64/codec_plain.c.pic.o' '$(BUILD_ROOT)/contrib/libs/base64/plain64/lib.c.pic.o'

$(BUILD_ROOT)/contrib/libs/base64/plain64/codec_plain.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/base64/plain64/codec_plain.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/plain64'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/base64/plain64/codec_plain.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/base64/plain64/codec_plain.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c11

$(BUILD_ROOT)/contrib/libs/base64/plain64/lib.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/base64/plain64/lib.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/plain64'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/base64/plain64/lib.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/base64/plain64/lib.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c11

$(BUILD_ROOT)/contrib/libs/base64/ssse3/liblibs-base64-ssse3.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/base64/ssse3/liblibs-base64-ssse3.a\

$(BUILD_ROOT)/contrib/libs/base64/ssse3/liblibs-base64-ssse3.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/base64/ssse3/codec_ssse3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/base64/ssse3/lib.c.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/ssse3'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name libs-base64-ssse3 -o contrib/libs/base64/ssse3/liblibs-base64-ssse3.a.mf -t LIBRARY -Ya,lics BSD2 -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/base64/ssse3/liblibs-base64-ssse3.a' '$(BUILD_ROOT)/contrib/libs/base64/ssse3/codec_ssse3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/base64/ssse3/lib.c.pic.o'

$(BUILD_ROOT)/contrib/libs/base64/ssse3/codec_ssse3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/base64/ssse3/codec_ssse3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/ssse3'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/base64/ssse3/codec_ssse3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/base64/ssse3/codec_ssse3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -mssse3 -std=c11

$(BUILD_ROOT)/contrib/libs/base64/ssse3/lib.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/base64/ssse3/lib.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/base64/ssse3'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/base64/ssse3/lib.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/base64/ssse3/lib.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -mssse3 -std=c11

$(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a\

$(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/cppdemangle/demangle.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cppdemangle'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name contrib-libs-cppdemangle -o contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a.mf -t LIBRARY -Ya,lics MIT BSD -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a' '$(BUILD_ROOT)/contrib/libs/cppdemangle/demangle.cpp.pic.o'

$(BUILD_ROOT)/contrib/libs/cppdemangle/demangle.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cppdemangle/demangle.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cppdemangle'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cppdemangle/demangle.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cppdemangle/demangle.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/crcutil/libcontrib-libs-crcutil.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/crcutil/libcontrib-libs-crcutil.a\

$(BUILD_ROOT)/contrib/libs/crcutil/libcontrib-libs-crcutil.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/crcutil/crc32c_sse4.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/crcutil/interface.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/crcutil/multiword_128_64_gcc_amd64_sse2.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_gcc_amd64_asm.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_gcc_i386_mmx.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_intrinsic_i386_mmx.cc.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/crcutil'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name contrib-libs-crcutil -o contrib/libs/crcutil/libcontrib-libs-crcutil.a.mf -t LIBRARY -Ya,lics APACHE2 -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/crcutil/libcontrib-libs-crcutil.a' '$(BUILD_ROOT)/contrib/libs/crcutil/crc32c_sse4.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_gcc_i386_mmx.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/crcutil/multiword_128_64_gcc_amd64_sse2.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_gcc_amd64_asm.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/crcutil/interface.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_intrinsic_i386_mmx.cc.pic.o'

$(BUILD_ROOT)/contrib/libs/crcutil/crc32c_sse4.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/crcutil/crc32c_sse4.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/crcutil'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/crcutil/crc32c_sse4.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/crcutil/crc32c_sse4.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DCRCUTIL_USE_MM_CRC32=1 -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/crcutil/interface.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/crcutil/interface.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/crcutil'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/crcutil/interface.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/crcutil/interface.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DCRCUTIL_USE_MM_CRC32=1 -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/crcutil/multiword_128_64_gcc_amd64_sse2.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/crcutil/multiword_128_64_gcc_amd64_sse2.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/crcutil'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/crcutil/multiword_128_64_gcc_amd64_sse2.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/crcutil/multiword_128_64_gcc_amd64_sse2.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DCRCUTIL_USE_MM_CRC32=1 -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_gcc_amd64_asm.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/crcutil/multiword_64_64_gcc_amd64_asm.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/crcutil'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_gcc_amd64_asm.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/crcutil/multiword_64_64_gcc_amd64_asm.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DCRCUTIL_USE_MM_CRC32=1 -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_gcc_i386_mmx.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/crcutil/multiword_64_64_gcc_i386_mmx.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/crcutil'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_gcc_i386_mmx.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/crcutil/multiword_64_64_gcc_i386_mmx.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DCRCUTIL_USE_MM_CRC32=1 -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_intrinsic_i386_mmx.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/crcutil/multiword_64_64_intrinsic_i386_mmx.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/crcutil'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_intrinsic_i386_mmx.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/crcutil/multiword_64_64_intrinsic_i386_mmx.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -DCRCUTIL_USE_MM_CRC32=1 -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a\

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/addtf3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/clzti2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/comparetf2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divdc3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divsc3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divtf3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divti3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divxc3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extenddftf2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extendsftf2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixdfti.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixsfti.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixtfsi.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixunsdfti.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatditf.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatsitf.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattidf.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattisf.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatunditf.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntidf.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntisf.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/gcc_personality_v0.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/int_util.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/modti3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muldc3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muloti4.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulsc3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/multf3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulxc3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/popcountdi2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/subtf3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfdf2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfsf2.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivmodti4.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivti3.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/umodti3.c.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name libs-cxxsupp-builtins -o contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a.mf -t LIBRARY -Ya,lics MIT BSD -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/addtf3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/clzti2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/comparetf2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divdc3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divsc3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divtf3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divti3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divxc3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extenddftf2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extendsftf2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixdfti.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixsfti.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixtfsi.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixunsdfti.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatditf.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatsitf.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattidf.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattisf.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatunditf.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntidf.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntisf.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/gcc_personality_v0.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/int_util.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/modti3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muldc3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muloti4.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulsc3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/multf3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulxc3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/popcountdi2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/subtf3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfdf2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfsf2.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivmodti4.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivti3.c.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/umodti3.c.pic.o'

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/addtf3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/addtf3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/addtf3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/addtf3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/clzti2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/clzti2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/clzti2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/clzti2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/comparetf2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/comparetf2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/comparetf2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/comparetf2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divdc3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divdc3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divdc3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divdc3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divsc3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divsc3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divsc3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divsc3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divtf3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divtf3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divtf3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divtf3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divti3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divti3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divti3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divti3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divxc3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divxc3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divxc3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/divxc3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extenddftf2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/extenddftf2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extenddftf2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/extenddftf2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extendsftf2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/extendsftf2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extendsftf2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/extendsftf2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixdfti.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixdfti.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixdfti.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixdfti.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixsfti.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixsfti.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixsfti.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixsfti.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixtfsi.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixtfsi.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixtfsi.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixtfsi.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixunsdfti.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixunsdfti.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixunsdfti.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/fixunsdfti.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatditf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatditf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatditf.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatditf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatsitf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatsitf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatsitf.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatsitf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattidf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floattidf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattidf.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floattidf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattisf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floattisf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattisf.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floattisf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatunditf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatunditf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatunditf.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatunditf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntidf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatuntidf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntidf.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatuntidf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntisf.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatuntisf.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntisf.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/floatuntisf.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/gcc_personality_v0.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/gcc_personality_v0.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/gcc_personality_v0.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/gcc_personality_v0.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/int_util.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/int_util.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/int_util.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/int_util.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/modti3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/modti3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/modti3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/modti3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muldc3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/muldc3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muldc3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/muldc3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muloti4.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/muloti4.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muloti4.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/muloti4.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulsc3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/mulsc3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulsc3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/mulsc3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/multf3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/multf3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/multf3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/multf3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulxc3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/mulxc3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulxc3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/mulxc3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/popcountdi2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/popcountdi2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/popcountdi2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/popcountdi2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/subtf3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/subtf3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/subtf3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/subtf3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfdf2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/trunctfdf2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfdf2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/trunctfdf2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfsf2.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/trunctfsf2.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfsf2.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/trunctfsf2.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivmodti4.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/udivmodti4.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivmodti4.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/udivmodti4.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivti3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/udivti3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivti3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/udivti3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/umodti3.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/umodti3.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/umodti3.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/builtins/umodti3.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a\

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/algorithm.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/any.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/bind.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/charconv.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/chrono.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/condition_variable.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/debug.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/exception.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/functional.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/future.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/hash.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/ios.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/iostream.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/locale.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/memory.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/mutex.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/new.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/optional.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/random.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/regex.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/shared_mutex.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/stdexcept.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/string.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/strstream.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/system_error.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/thread.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/typeinfo.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/utility.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/valarray.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/variant.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/vector.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name libs-cxxsupp-libcxx -o contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a.mf -t LIBRARY -Ya,lics APACHE -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/algorithm.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/any.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/bind.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/charconv.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/chrono.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/condition_variable.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/debug.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/exception.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/functional.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/future.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/hash.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/ios.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/iostream.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/locale.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/memory.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/mutex.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/optional.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/random.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/regex.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/shared_mutex.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/stdexcept.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/string.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/strstream.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/system_error.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/thread.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/typeinfo.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/utility.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/valarray.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/variant.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/vector.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/new.cpp.pic.o'

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/algorithm.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/algorithm.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/algorithm.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/algorithm.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/any.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/any.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/any.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/any.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/bind.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/bind.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/bind.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/bind.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/charconv.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/charconv.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/charconv.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/charconv.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/chrono.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/chrono.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/chrono.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/chrono.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/condition_variable.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/condition_variable.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/condition_variable.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/condition_variable.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/debug.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/debug.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/debug.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/debug.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/exception.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/exception.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/exception.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/exception.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/functional.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/functional.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/functional.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/functional.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/future.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/future.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/future.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/future.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/hash.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/hash.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/hash.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/hash.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/ios.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/ios.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/ios.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/ios.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/iostream.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/iostream.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/iostream.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/iostream.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/locale.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/locale.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/locale.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/locale.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/memory.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/memory.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/memory.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/memory.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/mutex.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/mutex.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/mutex.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/mutex.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/new.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/new.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/new.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/new.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/optional.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/optional.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/optional.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/optional.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/random.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/random.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/random.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/random.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/regex.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/regex.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/regex.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/regex.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/shared_mutex.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/shared_mutex.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/shared_mutex.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/shared_mutex.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/stdexcept.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/stdexcept.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/stdexcept.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/stdexcept.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/string.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/string.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/string.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/string.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/strstream.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/strstream.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/strstream.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/strstream.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/system_error.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/system_error.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/system_error.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/system_error.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/thread.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/thread.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/thread.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/thread.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/typeinfo.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/typeinfo.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/typeinfo.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/typeinfo.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/utility.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/utility.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/utility.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/utility.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/valarray.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/valarray.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/valarray.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/valarray.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/variant.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/variant.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/variant.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/variant.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/vector.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/vector.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/vector.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/src/vector.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -D_LIBCPP_BUILDING_LIBRARY -DLIBCXXRT=1 -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a\

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/auxhelper.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/dynamic_cast.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/exception.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/guard.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/memory.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/stdexcept.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/typeinfo.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/unwind.cc.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name libs-cxxsupp-libcxxrt -o contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a.mf -t LIBRARY -Ya,lics BSD -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/memory.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/auxhelper.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/stdexcept.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/exception.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/guard.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/typeinfo.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/dynamic_cast.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/unwind.cc.pic.o'

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/auxhelper.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/auxhelper.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/auxhelper.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/auxhelper.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/dynamic_cast.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/dynamic_cast.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/dynamic_cast.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/dynamic_cast.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/exception.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/exception.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/exception.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/exception.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/guard.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/guard.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/guard.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/guard.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/memory.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/memory.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/memory.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/memory.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/stdexcept.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/stdexcept.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/stdexcept.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/stdexcept.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/typeinfo.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/typeinfo.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/typeinfo.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/typeinfo.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/unwind.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/unwind.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/unwind.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt/unwind.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a\

$(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/double-conversion/bignum-dtoa.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/double-conversion/bignum.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/double-conversion/cached-powers.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/double-conversion/diy-fp.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/double-conversion/double-conversion.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/double-conversion/fast-dtoa.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/double-conversion/fixed-dtoa.cc.pic.o\
        $(BUILD_ROOT)/contrib/libs/double-conversion/strtod.cc.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name contrib-libs-double-conversion -o contrib/libs/double-conversion/libcontrib-libs-double-conversion.a.mf -t LIBRARY -Ya,lics BSD3 -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a' '$(BUILD_ROOT)/contrib/libs/double-conversion/cached-powers.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/double-conversion/bignum-dtoa.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/double-conversion/double-conversion.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/double-conversion/diy-fp.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/double-conversion/fixed-dtoa.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/double-conversion/strtod.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/double-conversion/bignum.cc.pic.o' '$(BUILD_ROOT)/contrib/libs/double-conversion/fast-dtoa.cc.pic.o'

$(BUILD_ROOT)/contrib/libs/double-conversion/bignum-dtoa.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/bignum-dtoa.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/bignum-dtoa.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/bignum-dtoa.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/bignum.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/bignum.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/bignum.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/bignum.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/cached-powers.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/cached-powers.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/cached-powers.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/cached-powers.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/diy-fp.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/diy-fp.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/diy-fp.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/diy-fp.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/double-conversion.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/double-conversion.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/double-conversion.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/double-conversion.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/fast-dtoa.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/fast-dtoa.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/fast-dtoa.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/fast-dtoa.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/fixed-dtoa.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/fixed-dtoa.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/fixed-dtoa.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/fixed-dtoa.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/double-conversion/strtod.cc.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/double-conversion/strtod.cc\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/double-conversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/double-conversion/strtod.cc.pic.o' '$(SOURCE_ROOT)/contrib/libs/double-conversion/strtod.cc' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a\

$(BUILD_ROOT)/contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_gen_text.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_parser.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/src/reflection.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/flatbuffers/src/util.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name contrib-libs-flatbuffers -o contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a.mf -t LIBRARY -Ya,lics APACHE2 -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a' '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_parser.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_gen_text.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/reflection.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/util.cpp.pic.o'

$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_gen_text.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_text.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_gen_text.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_gen_text.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_parser.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_parser.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_parser.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/idl_parser.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/src/reflection.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/reflection.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/reflection.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/reflection.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/flatbuffers/src/util.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/flatbuffers/src/util.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/flatbuffers/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/util.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/flatbuffers/src/util.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/flatbuffers/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a\

$(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-EHABI.cpp.pic.o\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-sjlj.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1-gcc-ext.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersRestore.S.o\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersSave.S.o\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/src/libunwind.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name contrib-libs-libunwind_master -o contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a.mf -t LIBRARY -Ya,lics Apache License 2.0 -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a' '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/libunwind.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-EHABI.cpp.pic.o' '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1.c.pic.o' '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1-gcc-ext.c.pic.o' '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-sjlj.c.pic.o' '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersRestore.S.o' '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersSave.S.o'

$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-EHABI.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/libunwind_master/src/Unwind-EHABI.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-EHABI.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/libunwind_master/src/Unwind-EHABI.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/libunwind_master/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -fno-rtti -fno-exceptions -funwind-tables -nostdinc++

$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-sjlj.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/libunwind_master/src/Unwind-sjlj.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master/src'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-sjlj.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/libunwind_master/src/Unwind-sjlj.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/libunwind_master/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c99

$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1-gcc-ext.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1-gcc-ext.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master/src'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1-gcc-ext.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1-gcc-ext.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/libunwind_master/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c99

$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master/src'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/libunwind_master/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c99

$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersRestore.S.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersRestore.S\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master/src'
	${CC} --target=x86_64-linux-gnu -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -c -o '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersRestore.S.o' '$(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersRestore.S' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/libunwind_master/include'

$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersSave.S.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersSave.S\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master/src'
	${CC} --target=x86_64-linux-gnu -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -c -o '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersSave.S.o' '$(SOURCE_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersSave.S' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/libunwind_master/include'

$(BUILD_ROOT)/contrib/libs/libunwind_master/src/libunwind.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/libunwind_master/src/libunwind.cpp\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/libunwind_master/src'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/libunwind.cpp.pic.o' '$(SOURCE_ROOT)/contrib/libs/libunwind_master/src/libunwind.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/libunwind_master/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Wno-register -DCATBOOST_OPENSOURCE=yes -nostdinc++ -fno-rtti -fno-exceptions -funwind-tables -nostdinc++

$(BUILD_ROOT)/contrib/libs/nayuki_md5/libcontrib-libs-nayuki_md5.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/nayuki_md5/libcontrib-libs-nayuki_md5.a\

$(BUILD_ROOT)/contrib/libs/nayuki_md5/libcontrib-libs-nayuki_md5.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/nayuki_md5/md5-fast-x8664.S.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/nayuki_md5'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name contrib-libs-nayuki_md5 -o contrib/libs/nayuki_md5/libcontrib-libs-nayuki_md5.a.mf -t LIBRARY -Ya,lics MIT -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/nayuki_md5/libcontrib-libs-nayuki_md5.a' '$(BUILD_ROOT)/contrib/libs/nayuki_md5/md5-fast-x8664.S.o'

$(BUILD_ROOT)/contrib/libs/nayuki_md5/md5-fast-x8664.S.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/nayuki_md5/md5-fast-x8664.S\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/nayuki_md5'
	${CC} --target=x86_64-linux-gnu -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -c -o '$(BUILD_ROOT)/contrib/libs/nayuki_md5/md5-fast-x8664.S.o' '$(SOURCE_ROOT)/contrib/libs/nayuki_md5/md5-fast-x8664.S' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include'

$(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a.mf\
        ::\
        $(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a\

$(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a\
        ::\
        $(BUILD_ROOT)/contrib/libs/zlib/adler32.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/compress.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/crc32.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/deflate.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/gzclose.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/gzlib.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/gzread.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/gzwrite.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/infback.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/inffast.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/inflate.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/inftrees.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/trees.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/uncompr.c.pic.o\
        $(BUILD_ROOT)/contrib/libs/zlib/zutil.c.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name contrib-libs-zlib -o contrib/libs/zlib/libcontrib-libs-zlib.a.mf -t LIBRARY -Ya,lics Zlib -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a' '$(BUILD_ROOT)/contrib/libs/zlib/adler32.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/compress.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/crc32.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/deflate.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/gzclose.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/gzlib.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/gzread.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/gzwrite.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/infback.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/inffast.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/inflate.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/inftrees.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/trees.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/uncompr.c.pic.o' '$(BUILD_ROOT)/contrib/libs/zlib/zutil.c.pic.o'

$(BUILD_ROOT)/contrib/libs/zlib/adler32.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/adler32.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/adler32.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/adler32.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/compress.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/compress.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/compress.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/compress.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/crc32.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/crc32.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/crc32.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/crc32.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/deflate.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/deflate.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/deflate.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/deflate.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/gzclose.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/gzclose.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/gzclose.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/gzclose.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/gzlib.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/gzlib.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/gzlib.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/gzlib.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/gzread.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/gzread.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/gzread.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/gzread.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/gzwrite.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/gzwrite.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/gzwrite.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/gzwrite.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/infback.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/infback.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/infback.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/infback.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/inffast.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/inffast.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/inffast.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/inffast.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/inflate.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/inflate.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/inflate.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/inflate.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/inftrees.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/inftrees.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/inftrees.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/inftrees.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/trees.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/trees.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/trees.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/trees.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/uncompr.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/uncompr.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/uncompr.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/uncompr.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/contrib/libs/zlib/zutil.c.pic.o\
        ::\
        $(SOURCE_ROOT)/contrib/libs/zlib/zutil.c\

	mkdir -p '$(BUILD_ROOT)/contrib/libs/zlib'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/contrib/libs/zlib/zutil.c.pic.o' '$(SOURCE_ROOT)/contrib/libs/zlib/zutil.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -w -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/library/binsaver/liblibrary-binsaver.a.mf\
        ::\
        $(BUILD_ROOT)/library/binsaver/liblibrary-binsaver.a\

$(BUILD_ROOT)/library/binsaver/liblibrary-binsaver.a\
        ::\
        $(BUILD_ROOT)/library/binsaver/bin_saver.cpp.pic.o\
        $(BUILD_ROOT)/library/binsaver/blob_io.cpp.pic.o\
        $(BUILD_ROOT)/library/binsaver/buffered_io.cpp.pic.o\
        $(BUILD_ROOT)/library/binsaver/mem_io.cpp.pic.o\
        $(BUILD_ROOT)/library/binsaver/util_stream_io.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/binsaver'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-binsaver -o library/binsaver/liblibrary-binsaver.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/binsaver/liblibrary-binsaver.a' '$(BUILD_ROOT)/library/binsaver/bin_saver.cpp.pic.o' '$(BUILD_ROOT)/library/binsaver/blob_io.cpp.pic.o' '$(BUILD_ROOT)/library/binsaver/buffered_io.cpp.pic.o' '$(BUILD_ROOT)/library/binsaver/mem_io.cpp.pic.o' '$(BUILD_ROOT)/library/binsaver/util_stream_io.cpp.pic.o'

$(BUILD_ROOT)/library/binsaver/bin_saver.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/binsaver/bin_saver.cpp\

	mkdir -p '$(BUILD_ROOT)/library/binsaver'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/binsaver/bin_saver.cpp.pic.o' '$(SOURCE_ROOT)/library/binsaver/bin_saver.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/binsaver/blob_io.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/binsaver/blob_io.cpp\

	mkdir -p '$(BUILD_ROOT)/library/binsaver'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/binsaver/blob_io.cpp.pic.o' '$(SOURCE_ROOT)/library/binsaver/blob_io.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/binsaver/buffered_io.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/binsaver/buffered_io.cpp\

	mkdir -p '$(BUILD_ROOT)/library/binsaver'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/binsaver/buffered_io.cpp.pic.o' '$(SOURCE_ROOT)/library/binsaver/buffered_io.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/binsaver/mem_io.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/binsaver/mem_io.cpp\

	mkdir -p '$(BUILD_ROOT)/library/binsaver'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/binsaver/mem_io.cpp.pic.o' '$(SOURCE_ROOT)/library/binsaver/mem_io.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/binsaver/util_stream_io.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/binsaver/util_stream_io.cpp\

	mkdir -p '$(BUILD_ROOT)/library/binsaver'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/binsaver/util_stream_io.cpp.pic.o' '$(SOURCE_ROOT)/library/binsaver/util_stream_io.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a.mf\
        ::\
        $(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a\

$(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a\
        ::\
        $(BUILD_ROOT)/library/colorizer/colors.cpp.pic.o\
        $(BUILD_ROOT)/library/colorizer/output.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/colorizer'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-colorizer -o library/colorizer/liblibrary-colorizer.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a' '$(BUILD_ROOT)/library/colorizer/colors.cpp.pic.o' '$(BUILD_ROOT)/library/colorizer/output.cpp.pic.o'

$(BUILD_ROOT)/library/colorizer/colors.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/colorizer/colors.cpp\

	mkdir -p '$(BUILD_ROOT)/library/colorizer'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/colorizer/colors.cpp.pic.o' '$(SOURCE_ROOT)/library/colorizer/colors.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/colorizer/output.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/colorizer/output.cpp\

	mkdir -p '$(BUILD_ROOT)/library/colorizer'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/colorizer/output.cpp.pic.o' '$(SOURCE_ROOT)/library/colorizer/output.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/containers/2d_array/liblibrary-containers-2d_array.a.mf\
        ::\
        $(BUILD_ROOT)/library/containers/2d_array/liblibrary-containers-2d_array.a\

$(BUILD_ROOT)/library/containers/2d_array/liblibrary-containers-2d_array.a\
        ::\
        $(BUILD_ROOT)/library/containers/2d_array/2d_array.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/containers/2d_array'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-containers-2d_array -o library/containers/2d_array/liblibrary-containers-2d_array.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/containers/2d_array/liblibrary-containers-2d_array.a' '$(BUILD_ROOT)/library/containers/2d_array/2d_array.cpp.pic.o'

$(BUILD_ROOT)/library/containers/2d_array/2d_array.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/containers/2d_array/2d_array.cpp\

	mkdir -p '$(BUILD_ROOT)/library/containers/2d_array'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/containers/2d_array/2d_array.cpp.pic.o' '$(SOURCE_ROOT)/library/containers/2d_array/2d_array.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/containers/dense_hash/liblibrary-containers-dense_hash.a.mf\
        ::\
        $(BUILD_ROOT)/library/containers/dense_hash/liblibrary-containers-dense_hash.a\

$(BUILD_ROOT)/library/containers/dense_hash/liblibrary-containers-dense_hash.a\
        ::\
        $(BUILD_ROOT)/library/containers/dense_hash/dense_hash.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/containers/dense_hash'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-containers-dense_hash -o library/containers/dense_hash/liblibrary-containers-dense_hash.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/containers/dense_hash/liblibrary-containers-dense_hash.a' '$(BUILD_ROOT)/library/containers/dense_hash/dense_hash.cpp.pic.o'

$(BUILD_ROOT)/library/containers/dense_hash/dense_hash.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/containers/dense_hash/dense_hash.cpp\

	mkdir -p '$(BUILD_ROOT)/library/containers/dense_hash'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/containers/dense_hash/dense_hash.cpp.pic.o' '$(SOURCE_ROOT)/library/containers/dense_hash/dense_hash.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/containers/flat_hash/lib/libcontainers-flat_hash-lib.a.mf\
        ::\
        $(BUILD_ROOT)/library/containers/flat_hash/lib/libcontainers-flat_hash-lib.a\

$(BUILD_ROOT)/library/containers/flat_hash/lib/libcontainers-flat_hash-lib.a\
        ::\
        $(BUILD_ROOT)/library/containers/flat_hash/lib/containers.cpp.pic.o\
        $(BUILD_ROOT)/library/containers/flat_hash/lib/expanders.cpp.pic.o\
        $(BUILD_ROOT)/library/containers/flat_hash/lib/iterator.cpp.pic.o\
        $(BUILD_ROOT)/library/containers/flat_hash/lib/map.cpp.pic.o\
        $(BUILD_ROOT)/library/containers/flat_hash/lib/probings.cpp.pic.o\
        $(BUILD_ROOT)/library/containers/flat_hash/lib/set.cpp.pic.o\
        $(BUILD_ROOT)/library/containers/flat_hash/lib/size_fitters.cpp.pic.o\
        $(BUILD_ROOT)/library/containers/flat_hash/lib/table.cpp.pic.o\
        $(BUILD_ROOT)/library/containers/flat_hash/lib/value_markers.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/containers/flat_hash/lib'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name containers-flat_hash-lib -o library/containers/flat_hash/lib/libcontainers-flat_hash-lib.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/containers/flat_hash/lib/libcontainers-flat_hash-lib.a' '$(BUILD_ROOT)/library/containers/flat_hash/lib/containers.cpp.pic.o' '$(BUILD_ROOT)/library/containers/flat_hash/lib/expanders.cpp.pic.o' '$(BUILD_ROOT)/library/containers/flat_hash/lib/iterator.cpp.pic.o' '$(BUILD_ROOT)/library/containers/flat_hash/lib/map.cpp.pic.o' '$(BUILD_ROOT)/library/containers/flat_hash/lib/probings.cpp.pic.o' '$(BUILD_ROOT)/library/containers/flat_hash/lib/set.cpp.pic.o' '$(BUILD_ROOT)/library/containers/flat_hash/lib/size_fitters.cpp.pic.o' '$(BUILD_ROOT)/library/containers/flat_hash/lib/table.cpp.pic.o' '$(BUILD_ROOT)/library/containers/flat_hash/lib/value_markers.cpp.pic.o'

$(BUILD_ROOT)/library/containers/flat_hash/lib/containers.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/containers/flat_hash/lib/containers.cpp\

	mkdir -p '$(BUILD_ROOT)/library/containers/flat_hash/lib'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/containers/flat_hash/lib/containers.cpp.pic.o' '$(SOURCE_ROOT)/library/containers/flat_hash/lib/containers.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/containers/flat_hash/lib/expanders.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/containers/flat_hash/lib/expanders.cpp\

	mkdir -p '$(BUILD_ROOT)/library/containers/flat_hash/lib'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/containers/flat_hash/lib/expanders.cpp.pic.o' '$(SOURCE_ROOT)/library/containers/flat_hash/lib/expanders.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/containers/flat_hash/lib/iterator.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/containers/flat_hash/lib/iterator.cpp\

	mkdir -p '$(BUILD_ROOT)/library/containers/flat_hash/lib'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/containers/flat_hash/lib/iterator.cpp.pic.o' '$(SOURCE_ROOT)/library/containers/flat_hash/lib/iterator.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/containers/flat_hash/lib/map.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/containers/flat_hash/lib/map.cpp\

	mkdir -p '$(BUILD_ROOT)/library/containers/flat_hash/lib'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/containers/flat_hash/lib/map.cpp.pic.o' '$(SOURCE_ROOT)/library/containers/flat_hash/lib/map.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/containers/flat_hash/lib/probings.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/containers/flat_hash/lib/probings.cpp\

	mkdir -p '$(BUILD_ROOT)/library/containers/flat_hash/lib'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/containers/flat_hash/lib/probings.cpp.pic.o' '$(SOURCE_ROOT)/library/containers/flat_hash/lib/probings.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/containers/flat_hash/lib/set.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/containers/flat_hash/lib/set.cpp\

	mkdir -p '$(BUILD_ROOT)/library/containers/flat_hash/lib'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/containers/flat_hash/lib/set.cpp.pic.o' '$(SOURCE_ROOT)/library/containers/flat_hash/lib/set.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/containers/flat_hash/lib/size_fitters.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/containers/flat_hash/lib/size_fitters.cpp\

	mkdir -p '$(BUILD_ROOT)/library/containers/flat_hash/lib'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/containers/flat_hash/lib/size_fitters.cpp.pic.o' '$(SOURCE_ROOT)/library/containers/flat_hash/lib/size_fitters.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/containers/flat_hash/lib/table.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/containers/flat_hash/lib/table.cpp\

	mkdir -p '$(BUILD_ROOT)/library/containers/flat_hash/lib'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/containers/flat_hash/lib/table.cpp.pic.o' '$(SOURCE_ROOT)/library/containers/flat_hash/lib/table.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/containers/flat_hash/lib/value_markers.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/containers/flat_hash/lib/value_markers.cpp\

	mkdir -p '$(BUILD_ROOT)/library/containers/flat_hash/lib'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/containers/flat_hash/lib/value_markers.cpp.pic.o' '$(SOURCE_ROOT)/library/containers/flat_hash/lib/value_markers.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/containers/flat_hash/liblibrary-containers-flat_hash.a.mf\
        ::\
        $(BUILD_ROOT)/library/containers/flat_hash/liblibrary-containers-flat_hash.a\

$(BUILD_ROOT)/library/containers/flat_hash/liblibrary-containers-flat_hash.a\
        ::\
        $(BUILD_ROOT)/library/containers/flat_hash/flat_hash.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/containers/flat_hash'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-containers-flat_hash -o library/containers/flat_hash/liblibrary-containers-flat_hash.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/containers/flat_hash/liblibrary-containers-flat_hash.a' '$(BUILD_ROOT)/library/containers/flat_hash/flat_hash.cpp.pic.o'

$(BUILD_ROOT)/library/containers/flat_hash/flat_hash.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/containers/flat_hash/flat_hash.cpp\

	mkdir -p '$(BUILD_ROOT)/library/containers/flat_hash'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/containers/flat_hash/flat_hash.cpp.pic.o' '$(SOURCE_ROOT)/library/containers/flat_hash/flat_hash.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/dbg_output/liblibrary-dbg_output.a.mf\
        ::\
        $(BUILD_ROOT)/library/dbg_output/liblibrary-dbg_output.a\

$(BUILD_ROOT)/library/dbg_output/liblibrary-dbg_output.a\
        ::\
        $(BUILD_ROOT)/library/dbg_output/dump.cpp.pic.o\
        $(BUILD_ROOT)/library/dbg_output/dumpers.cpp.pic.o\
        $(BUILD_ROOT)/library/dbg_output/engine.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/dbg_output'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-dbg_output -o library/dbg_output/liblibrary-dbg_output.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/dbg_output/liblibrary-dbg_output.a' '$(BUILD_ROOT)/library/dbg_output/dump.cpp.pic.o' '$(BUILD_ROOT)/library/dbg_output/dumpers.cpp.pic.o' '$(BUILD_ROOT)/library/dbg_output/engine.cpp.pic.o'

$(BUILD_ROOT)/library/dbg_output/dump.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/dbg_output/dump.cpp\

	mkdir -p '$(BUILD_ROOT)/library/dbg_output'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/dbg_output/dump.cpp.pic.o' '$(SOURCE_ROOT)/library/dbg_output/dump.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/dbg_output/dumpers.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/dbg_output/dumpers.cpp\

	mkdir -p '$(BUILD_ROOT)/library/dbg_output'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/dbg_output/dumpers.cpp.pic.o' '$(SOURCE_ROOT)/library/dbg_output/dumpers.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/dbg_output/engine.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/dbg_output/engine.cpp\

	mkdir -p '$(BUILD_ROOT)/library/dbg_output'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/dbg_output/engine.cpp.pic.o' '$(SOURCE_ROOT)/library/dbg_output/engine.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/digest/crc32c/liblibrary-digest-crc32c.a.mf\
        ::\
        $(BUILD_ROOT)/library/digest/crc32c/liblibrary-digest-crc32c.a\

$(BUILD_ROOT)/library/digest/crc32c/liblibrary-digest-crc32c.a\
        ::\
        $(BUILD_ROOT)/library/digest/crc32c/crc32c.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/digest/crc32c'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-digest-crc32c -o library/digest/crc32c/liblibrary-digest-crc32c.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/digest/crc32c/liblibrary-digest-crc32c.a' '$(BUILD_ROOT)/library/digest/crc32c/crc32c.cpp.pic.o'

$(BUILD_ROOT)/library/digest/crc32c/crc32c.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/digest/crc32c/crc32c.cpp\

	mkdir -p '$(BUILD_ROOT)/library/digest/crc32c'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/digest/crc32c/crc32c.cpp.pic.o' '$(SOURCE_ROOT)/library/digest/crc32c/crc32c.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/digest/md5/liblibrary-digest-md5.a.mf\
        ::\
        $(BUILD_ROOT)/library/digest/md5/liblibrary-digest-md5.a\

$(BUILD_ROOT)/library/digest/md5/liblibrary-digest-md5.a\
        ::\
        $(BUILD_ROOT)/library/digest/md5/md5.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/digest/md5'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-digest-md5 -o library/digest/md5/liblibrary-digest-md5.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/digest/md5/liblibrary-digest-md5.a' '$(BUILD_ROOT)/library/digest/md5/md5.cpp.pic.o'

$(BUILD_ROOT)/library/digest/md5/md5.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/digest/md5/md5.cpp\

	mkdir -p '$(BUILD_ROOT)/library/digest/md5'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/digest/md5/md5.cpp.pic.o' '$(SOURCE_ROOT)/library/digest/md5/md5.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/fast_exp/liblibrary-fast_exp.a.mf\
        ::\
        $(BUILD_ROOT)/library/fast_exp/liblibrary-fast_exp.a\

$(BUILD_ROOT)/library/fast_exp/liblibrary-fast_exp.a\
        ::\
        $(BUILD_ROOT)/library/fast_exp/fast_exp.cpp.pic.o\
        $(BUILD_ROOT)/library/fast_exp/fast_exp_avx2.cpp.pic.o\
        $(BUILD_ROOT)/library/fast_exp/fast_exp_sse2.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/fast_exp'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-fast_exp -o library/fast_exp/liblibrary-fast_exp.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/fast_exp/liblibrary-fast_exp.a' '$(BUILD_ROOT)/library/fast_exp/fast_exp_avx2.cpp.pic.o' '$(BUILD_ROOT)/library/fast_exp/fast_exp_sse2.cpp.pic.o' '$(BUILD_ROOT)/library/fast_exp/fast_exp.cpp.pic.o'

$(BUILD_ROOT)/library/fast_exp/fast_exp.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/fast_exp/fast_exp.cpp\

	mkdir -p '$(BUILD_ROOT)/library/fast_exp'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/fast_exp/fast_exp.cpp.pic.o' '$(SOURCE_ROOT)/library/fast_exp/fast_exp.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/fast_exp/fast_exp_avx2.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/fast_exp/fast_exp_avx2.cpp\

	mkdir -p '$(BUILD_ROOT)/library/fast_exp'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/fast_exp/fast_exp_avx2.cpp.pic.o' '$(SOURCE_ROOT)/library/fast_exp/fast_exp_avx2.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++ -mavx2

$(BUILD_ROOT)/library/fast_exp/fast_exp_sse2.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/fast_exp/fast_exp_sse2.cpp\

	mkdir -p '$(BUILD_ROOT)/library/fast_exp'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/fast_exp/fast_exp_sse2.cpp.pic.o' '$(SOURCE_ROOT)/library/fast_exp/fast_exp_sse2.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2

$(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a.mf\
        ::\
        $(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a\

$(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a\
        ::\
        $(BUILD_ROOT)/library/getopt/small/last_getopt.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/last_getopt_easy_setup.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/last_getopt_opt.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/last_getopt_opts.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/last_getopt_parse_result.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/last_getopt_parser.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/modchooser.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/opt.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/opt2.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/posix_getopt.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/ygetopt.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-getopt-small -o library/getopt/small/liblibrary-getopt-small.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a' '$(BUILD_ROOT)/library/getopt/small/last_getopt.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/last_getopt_easy_setup.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/last_getopt_opt.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/last_getopt_opts.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/last_getopt_parser.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/last_getopt_parse_result.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/modchooser.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/opt.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/opt2.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/posix_getopt.cpp.pic.o' '$(BUILD_ROOT)/library/getopt/small/ygetopt.cpp.pic.o'

$(BUILD_ROOT)/library/getopt/small/last_getopt.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/last_getopt.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/last_getopt.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/last_getopt.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/last_getopt_easy_setup.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/last_getopt_easy_setup.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/last_getopt_easy_setup.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/last_getopt_easy_setup.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/last_getopt_opt.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/last_getopt_opt.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/last_getopt_opt.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/last_getopt_opt.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/last_getopt_opts.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/last_getopt_opts.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/last_getopt_opts.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/last_getopt_opts.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/last_getopt_parse_result.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/last_getopt_parse_result.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/last_getopt_parse_result.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/last_getopt_parse_result.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/last_getopt_parser.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/last_getopt_parser.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/last_getopt_parser.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/last_getopt_parser.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/modchooser.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/modchooser.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/modchooser.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/modchooser.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/opt.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/opt.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/opt.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/opt.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/opt2.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/opt2.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/opt2.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/opt2.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/posix_getopt.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/posix_getopt.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/posix_getopt.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/posix_getopt.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/getopt/small/ygetopt.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/getopt/small/ygetopt.cpp\

	mkdir -p '$(BUILD_ROOT)/library/getopt/small'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/getopt/small/ygetopt.cpp.pic.o' '$(SOURCE_ROOT)/library/getopt/small/ygetopt.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/grid_creator/liblibrary-grid_creator.a.mf\
        ::\
        $(BUILD_ROOT)/library/grid_creator/liblibrary-grid_creator.a\

$(BUILD_ROOT)/library/grid_creator/liblibrary-grid_creator.a\
        ::\
        $(BUILD_ROOT)/library/grid_creator/binarization.cpp.pic.o\
        $(BUILD_ROOT)/library/grid_creator/binarization.h_serialized.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/grid_creator'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-grid_creator -o library/grid_creator/liblibrary-grid_creator.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/grid_creator/liblibrary-grid_creator.a' '$(BUILD_ROOT)/library/grid_creator/binarization.cpp.pic.o' '$(BUILD_ROOT)/library/grid_creator/binarization.h_serialized.cpp.pic.o'

$(BUILD_ROOT)/library/grid_creator/binarization.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/grid_creator/binarization.cpp\

	mkdir -p '$(BUILD_ROOT)/library/grid_creator'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/grid_creator/binarization.cpp.pic.o' '$(SOURCE_ROOT)/library/grid_creator/binarization.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/grid_creator/binarization.h_serialized.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/library/grid_creator/binarization.h_serialized.cpp\

	mkdir -p '$(BUILD_ROOT)/library/grid_creator'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/grid_creator/binarization.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/library/grid_creator/binarization.h_serialized.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/grid_creator/binarization.h_serialized.cpp\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\
        $(SOURCE_ROOT)/library/grid_creator/binarization.h\

	mkdir -p '$(BUILD_ROOT)/library/grid_creator'
	'$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' '$(SOURCE_ROOT)/library/grid_creator/binarization.h' --include-path library/grid_creator/binarization.h --output '$(BUILD_ROOT)/library/grid_creator/binarization.h_serialized.cpp'

$(BUILD_ROOT)/library/json/common/liblibrary-json-common.a.mf\
        ::\
        $(BUILD_ROOT)/library/json/common/liblibrary-json-common.a\

$(BUILD_ROOT)/library/json/common/liblibrary-json-common.a\
        ::\
        $(BUILD_ROOT)/library/json/common/defs.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/json/common'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-json-common -o library/json/common/liblibrary-json-common.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/json/common/liblibrary-json-common.a' '$(BUILD_ROOT)/library/json/common/defs.cpp.pic.o'

$(BUILD_ROOT)/library/json/common/defs.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/json/common/defs.cpp\

	mkdir -p '$(BUILD_ROOT)/library/json/common'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/json/common/defs.cpp.pic.o' '$(SOURCE_ROOT)/library/json/common/defs.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/json/fast_sax/liblibrary-json-fast_sax.a.mf\
        ::\
        $(BUILD_ROOT)/library/json/fast_sax/liblibrary-json-fast_sax.a\

$(BUILD_ROOT)/library/json/fast_sax/liblibrary-json-fast_sax.a\
        ::\
        $(BUILD_ROOT)/library/json/fast_sax/parser.rl6.cpp.pic.o\
        $(BUILD_ROOT)/library/json/fast_sax/unescape.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/json/fast_sax'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-json-fast_sax -o library/json/fast_sax/liblibrary-json-fast_sax.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/json/fast_sax/liblibrary-json-fast_sax.a' '$(BUILD_ROOT)/library/json/fast_sax/unescape.cpp.pic.o' '$(BUILD_ROOT)/library/json/fast_sax/parser.rl6.cpp.pic.o'

$(BUILD_ROOT)/library/json/fast_sax/parser.rl6.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/library/json/fast_sax/parser.rl6.cpp\

	mkdir -p '$(BUILD_ROOT)/library/json/fast_sax'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/json/fast_sax/parser.rl6.cpp.pic.o' '$(BUILD_ROOT)/library/json/fast_sax/parser.rl6.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/json/fast_sax/parser.rl6.cpp\
        ::\
        $(BUILD_ROOT)/contrib/tools/ragel6/ragel6\
        $(SOURCE_ROOT)/library/json/fast_sax/parser.rl6\

	mkdir -p '$(BUILD_ROOT)/library/json/fast_sax'
	'$(BUILD_ROOT)/contrib/tools/ragel6/ragel6' -CG2 '-I$(SOURCE_ROOT)' -o '$(BUILD_ROOT)/library/json/fast_sax/parser.rl6.cpp' '$(SOURCE_ROOT)/library/json/fast_sax/parser.rl6'

$(BUILD_ROOT)/library/json/fast_sax/unescape.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/json/fast_sax/unescape.cpp\

	mkdir -p '$(BUILD_ROOT)/library/json/fast_sax'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/json/fast_sax/unescape.cpp.pic.o' '$(SOURCE_ROOT)/library/json/fast_sax/unescape.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/json/liblibrary-json.a.mf\
        ::\
        $(BUILD_ROOT)/library/json/liblibrary-json.a\

$(BUILD_ROOT)/library/json/liblibrary-json.a\
        ::\
        $(BUILD_ROOT)/library/json/json_prettifier.cpp.pic.o\
        $(BUILD_ROOT)/library/json/json_reader.cpp.pic.o\
        $(BUILD_ROOT)/library/json/json_writer.cpp.pic.o\
        $(BUILD_ROOT)/library/json/rapidjson_helpers.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/json'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-json -o library/json/liblibrary-json.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/json/liblibrary-json.a' '$(BUILD_ROOT)/library/json/json_writer.cpp.pic.o' '$(BUILD_ROOT)/library/json/json_reader.cpp.pic.o' '$(BUILD_ROOT)/library/json/json_prettifier.cpp.pic.o' '$(BUILD_ROOT)/library/json/rapidjson_helpers.cpp.pic.o'

$(BUILD_ROOT)/library/json/json_prettifier.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/json/json_prettifier.cpp\

	mkdir -p '$(BUILD_ROOT)/library/json'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/json/json_prettifier.cpp.pic.o' '$(SOURCE_ROOT)/library/json/json_prettifier.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/json/json_reader.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/json/json_reader.cpp\

	mkdir -p '$(BUILD_ROOT)/library/json'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/json/json_reader.cpp.pic.o' '$(SOURCE_ROOT)/library/json/json_reader.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/json/json_writer.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/json/json_writer.cpp\

	mkdir -p '$(BUILD_ROOT)/library/json'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/json/json_writer.cpp.pic.o' '$(SOURCE_ROOT)/library/json/json_writer.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/json/rapidjson_helpers.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/json/rapidjson_helpers.cpp\

	mkdir -p '$(BUILD_ROOT)/library/json'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/json/rapidjson_helpers.cpp.pic.o' '$(SOURCE_ROOT)/library/json/rapidjson_helpers.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/json/writer/liblibrary-json-writer.a.mf\
        ::\
        $(BUILD_ROOT)/library/json/writer/liblibrary-json-writer.a\

$(BUILD_ROOT)/library/json/writer/liblibrary-json-writer.a\
        ::\
        $(BUILD_ROOT)/library/json/writer/json.cpp.pic.o\
        $(BUILD_ROOT)/library/json/writer/json_value.cpp.pic.o\
        $(BUILD_ROOT)/library/json/writer/json_value.h_serialized.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/json/writer'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-json-writer -o library/json/writer/liblibrary-json-writer.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/json/writer/liblibrary-json-writer.a' '$(BUILD_ROOT)/library/json/writer/json_value.cpp.pic.o' '$(BUILD_ROOT)/library/json/writer/json.cpp.pic.o' '$(BUILD_ROOT)/library/json/writer/json_value.h_serialized.cpp.pic.o'

$(BUILD_ROOT)/library/json/writer/json.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/json/writer/json.cpp\

	mkdir -p '$(BUILD_ROOT)/library/json/writer'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/json/writer/json.cpp.pic.o' '$(SOURCE_ROOT)/library/json/writer/json.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/json/writer/json_value.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/json/writer/json_value.cpp\

	mkdir -p '$(BUILD_ROOT)/library/json/writer'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/json/writer/json_value.cpp.pic.o' '$(SOURCE_ROOT)/library/json/writer/json_value.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/json/writer/json_value.h_serialized.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/library/json/writer/json_value.h_serialized.cpp\

	mkdir -p '$(BUILD_ROOT)/library/json/writer'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/json/writer/json_value.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/library/json/writer/json_value.h_serialized.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/json/writer/json_value.h_serialized.cpp\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\
        $(SOURCE_ROOT)/library/json/writer/json_value.h\

	mkdir -p '$(BUILD_ROOT)/library/json/writer'
	'$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' '$(SOURCE_ROOT)/library/json/writer/json_value.h' --include-path library/json/writer/json_value.h --output '$(BUILD_ROOT)/library/json/writer/json_value.h_serialized.cpp'

$(BUILD_ROOT)/library/logger/global/liblibrary-logger-global.a.mf\
        ::\
        $(BUILD_ROOT)/library/logger/global/liblibrary-logger-global.a\

$(BUILD_ROOT)/library/logger/global/liblibrary-logger-global.a\
        ::\
        $(BUILD_ROOT)/library/logger/global/common.cpp.pic.o\
        $(BUILD_ROOT)/library/logger/global/global.cpp.pic.o\
        $(BUILD_ROOT)/library/logger/global/rty_formater.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/logger/global'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-logger-global -o library/logger/global/liblibrary-logger-global.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/logger/global/liblibrary-logger-global.a' '$(BUILD_ROOT)/library/logger/global/common.cpp.pic.o' '$(BUILD_ROOT)/library/logger/global/global.cpp.pic.o' '$(BUILD_ROOT)/library/logger/global/rty_formater.cpp.pic.o'

$(BUILD_ROOT)/library/logger/global/common.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/logger/global/common.cpp\

	mkdir -p '$(BUILD_ROOT)/library/logger/global'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/logger/global/common.cpp.pic.o' '$(SOURCE_ROOT)/library/logger/global/common.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/logger/global/global.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/logger/global/global.cpp\

	mkdir -p '$(BUILD_ROOT)/library/logger/global'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/logger/global/global.cpp.pic.o' '$(SOURCE_ROOT)/library/logger/global/global.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/logger/global/rty_formater.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/logger/global/rty_formater.cpp\

	mkdir -p '$(BUILD_ROOT)/library/logger/global'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/logger/global/rty_formater.cpp.pic.o' '$(SOURCE_ROOT)/library/logger/global/rty_formater.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/logger/liblibrary-logger.a.mf\
        ::\
        $(BUILD_ROOT)/library/logger/liblibrary-logger.a\

$(BUILD_ROOT)/library/logger/liblibrary-logger.a\
        ::\
        $(BUILD_ROOT)/library/logger/backend.cpp.pic.o\
        $(BUILD_ROOT)/library/logger/element.cpp.pic.o\
        $(BUILD_ROOT)/library/logger/file.cpp.pic.o\
        $(BUILD_ROOT)/library/logger/filter.cpp.pic.o\
        $(BUILD_ROOT)/library/logger/log.cpp.pic.o\
        $(BUILD_ROOT)/library/logger/null.cpp.pic.o\
        $(BUILD_ROOT)/library/logger/priority.h_serialized.cpp.pic.o\
        $(BUILD_ROOT)/library/logger/rotating_file.cpp.pic.o\
        $(BUILD_ROOT)/library/logger/stream.cpp.pic.o\
        $(BUILD_ROOT)/library/logger/system.cpp.pic.o\
        $(BUILD_ROOT)/library/logger/thread.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/logger'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-logger -o library/logger/liblibrary-logger.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/logger/liblibrary-logger.a' '$(BUILD_ROOT)/library/logger/log.cpp.pic.o' '$(BUILD_ROOT)/library/logger/system.cpp.pic.o' '$(BUILD_ROOT)/library/logger/file.cpp.pic.o' '$(BUILD_ROOT)/library/logger/rotating_file.cpp.pic.o' '$(BUILD_ROOT)/library/logger/null.cpp.pic.o' '$(BUILD_ROOT)/library/logger/backend.cpp.pic.o' '$(BUILD_ROOT)/library/logger/thread.cpp.pic.o' '$(BUILD_ROOT)/library/logger/stream.cpp.pic.o' '$(BUILD_ROOT)/library/logger/element.cpp.pic.o' '$(BUILD_ROOT)/library/logger/filter.cpp.pic.o' '$(BUILD_ROOT)/library/logger/priority.h_serialized.cpp.pic.o'

$(BUILD_ROOT)/library/logger/backend.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/logger/backend.cpp\

	mkdir -p '$(BUILD_ROOT)/library/logger'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/logger/backend.cpp.pic.o' '$(SOURCE_ROOT)/library/logger/backend.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/logger/element.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/logger/element.cpp\

	mkdir -p '$(BUILD_ROOT)/library/logger'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/logger/element.cpp.pic.o' '$(SOURCE_ROOT)/library/logger/element.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/logger/file.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/logger/file.cpp\

	mkdir -p '$(BUILD_ROOT)/library/logger'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/logger/file.cpp.pic.o' '$(SOURCE_ROOT)/library/logger/file.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/logger/filter.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/logger/filter.cpp\

	mkdir -p '$(BUILD_ROOT)/library/logger'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/logger/filter.cpp.pic.o' '$(SOURCE_ROOT)/library/logger/filter.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/logger/log.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/logger/log.cpp\

	mkdir -p '$(BUILD_ROOT)/library/logger'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/logger/log.cpp.pic.o' '$(SOURCE_ROOT)/library/logger/log.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/logger/null.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/logger/null.cpp\

	mkdir -p '$(BUILD_ROOT)/library/logger'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/logger/null.cpp.pic.o' '$(SOURCE_ROOT)/library/logger/null.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/logger/priority.h_serialized.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/library/logger/priority.h_serialized.cpp\

	mkdir -p '$(BUILD_ROOT)/library/logger'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/logger/priority.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/library/logger/priority.h_serialized.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/logger/priority.h_serialized.cpp\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\
        $(SOURCE_ROOT)/library/logger/priority.h\

	mkdir -p '$(BUILD_ROOT)/library/logger'
	'$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' '$(SOURCE_ROOT)/library/logger/priority.h' --include-path library/logger/priority.h --output '$(BUILD_ROOT)/library/logger/priority.h_serialized.cpp'

$(BUILD_ROOT)/library/logger/rotating_file.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/logger/rotating_file.cpp\

	mkdir -p '$(BUILD_ROOT)/library/logger'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/logger/rotating_file.cpp.pic.o' '$(SOURCE_ROOT)/library/logger/rotating_file.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/logger/stream.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/logger/stream.cpp\

	mkdir -p '$(BUILD_ROOT)/library/logger'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/logger/stream.cpp.pic.o' '$(SOURCE_ROOT)/library/logger/stream.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/logger/system.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/logger/system.cpp\

	mkdir -p '$(BUILD_ROOT)/library/logger'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/logger/system.cpp.pic.o' '$(SOURCE_ROOT)/library/logger/system.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/logger/thread.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/logger/thread.cpp\

	mkdir -p '$(BUILD_ROOT)/library/logger'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/logger/thread.cpp.pic.o' '$(SOURCE_ROOT)/library/logger/thread.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a.mf\
        ::\
        $(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a\

$(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a\
        ::\
        $(BUILD_ROOT)/library/malloc/api/malloc.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/malloc/api'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-malloc-api -o library/malloc/api/liblibrary-malloc-api.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a' '$(BUILD_ROOT)/library/malloc/api/malloc.cpp.pic.o'

$(BUILD_ROOT)/library/malloc/api/malloc.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/malloc/api/malloc.cpp\

	mkdir -p '$(BUILD_ROOT)/library/malloc/api'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/malloc/api/malloc.cpp.pic.o' '$(SOURCE_ROOT)/library/malloc/api/malloc.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/object_factory/liblibrary-object_factory.a.mf\
        ::\
        $(BUILD_ROOT)/library/object_factory/liblibrary-object_factory.a\

$(BUILD_ROOT)/library/object_factory/liblibrary-object_factory.a\
        ::\
        $(BUILD_ROOT)/library/object_factory/object_factory.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/object_factory'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-object_factory -o library/object_factory/liblibrary-object_factory.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/object_factory/liblibrary-object_factory.a' '$(BUILD_ROOT)/library/object_factory/object_factory.cpp.pic.o'

$(BUILD_ROOT)/library/object_factory/object_factory.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/object_factory/object_factory.cpp\

	mkdir -p '$(BUILD_ROOT)/library/object_factory'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/object_factory/object_factory.cpp.pic.o' '$(SOURCE_ROOT)/library/object_factory/object_factory.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/pop_count/liblibrary-pop_count.a.mf\
        ::\
        $(BUILD_ROOT)/library/pop_count/liblibrary-pop_count.a\

$(BUILD_ROOT)/library/pop_count/liblibrary-pop_count.a\
        ::\
        $(BUILD_ROOT)/library/pop_count/popcount.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/pop_count'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-pop_count -o library/pop_count/liblibrary-pop_count.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/pop_count/liblibrary-pop_count.a' '$(BUILD_ROOT)/library/pop_count/popcount.cpp.pic.o'

$(BUILD_ROOT)/library/pop_count/popcount.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/pop_count/popcount.cpp\

	mkdir -p '$(BUILD_ROOT)/library/pop_count'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/pop_count/popcount.cpp.pic.o' '$(SOURCE_ROOT)/library/pop_count/popcount.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/string_utils/base64/liblibrary-string_utils-base64.a.mf\
        ::\
        $(BUILD_ROOT)/library/string_utils/base64/liblibrary-string_utils-base64.a\

$(BUILD_ROOT)/library/string_utils/base64/liblibrary-string_utils-base64.a\
        ::\
        $(BUILD_ROOT)/library/string_utils/base64/base64.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/string_utils/base64'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-string_utils-base64 -o library/string_utils/base64/liblibrary-string_utils-base64.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/string_utils/base64/liblibrary-string_utils-base64.a' '$(BUILD_ROOT)/library/string_utils/base64/base64.cpp.pic.o'

$(BUILD_ROOT)/library/string_utils/base64/base64.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/string_utils/base64/base64.cpp\

	mkdir -p '$(BUILD_ROOT)/library/string_utils/base64'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/string_utils/base64/base64.cpp.pic.o' '$(SOURCE_ROOT)/library/string_utils/base64/base64.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/string_utils/relaxed_escaper/liblibrary-string_utils-relaxed_escaper.a.mf\
        ::\
        $(BUILD_ROOT)/library/string_utils/relaxed_escaper/liblibrary-string_utils-relaxed_escaper.a\

$(BUILD_ROOT)/library/string_utils/relaxed_escaper/liblibrary-string_utils-relaxed_escaper.a\
        ::\
        $(BUILD_ROOT)/library/string_utils/relaxed_escaper/relaxed_escaper.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/string_utils/relaxed_escaper'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-string_utils-relaxed_escaper -o library/string_utils/relaxed_escaper/liblibrary-string_utils-relaxed_escaper.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/string_utils/relaxed_escaper/liblibrary-string_utils-relaxed_escaper.a' '$(BUILD_ROOT)/library/string_utils/relaxed_escaper/relaxed_escaper.cpp.pic.o'

$(BUILD_ROOT)/library/string_utils/relaxed_escaper/relaxed_escaper.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/string_utils/relaxed_escaper/relaxed_escaper.cpp\

	mkdir -p '$(BUILD_ROOT)/library/string_utils/relaxed_escaper'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/string_utils/relaxed_escaper/relaxed_escaper.cpp.pic.o' '$(SOURCE_ROOT)/library/string_utils/relaxed_escaper/relaxed_escaper.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/svnversion/liblibrary-svnversion.a.mf\
        ::\
        $(BUILD_ROOT)/library/svnversion/liblibrary-svnversion.a\

$(BUILD_ROOT)/library/svnversion/liblibrary-svnversion.a\
        ::\
        $(BUILD_ROOT)/library/svnversion/svn_interface.c.pic.o\
        $(BUILD_ROOT)/library/svnversion/svnversion.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/svnversion'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-svnversion -o library/svnversion/liblibrary-svnversion.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/svnversion/liblibrary-svnversion.a' '$(BUILD_ROOT)/library/svnversion/svnversion.cpp.pic.o' '$(BUILD_ROOT)/library/svnversion/svn_interface.c.pic.o'

$(BUILD_ROOT)/library/svnversion/svn_interface.c.pic.o\
        ::\
        $(SOURCE_ROOT)/library/svnversion/svn_interface.c\

	mkdir -p '$(BUILD_ROOT)/library/svnversion'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/svnversion/svn_interface.c.pic.o' '$(SOURCE_ROOT)/library/svnversion/svn_interface.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/library/svnversion/svnversion.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/svnversion/svnversion.cpp\

	mkdir -p '$(BUILD_ROOT)/library/svnversion'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/svnversion/svnversion.cpp.pic.o' '$(SOURCE_ROOT)/library/svnversion/svnversion.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/liblibrary-text_processing-dictionary.a.mf\
        ::\
        $(BUILD_ROOT)/library/text_processing/dictionary/liblibrary-text_processing-dictionary.a\

$(BUILD_ROOT)/library/text_processing/dictionary/liblibrary-text_processing-dictionary.a\
        ::\
        $(BUILD_ROOT)/library/text_processing/dictionary/bpe_builder.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/bpe_dictionary.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/bpe_helpers.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/dictionary.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/dictionary_builder.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/fbs_helpers.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/frequency_based_dictionary.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/frequency_based_dictionary_impl.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/mmap_frequency_based_dictionary.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/mmap_frequency_based_dictionary_impl.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/mmap_hash_table.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/multigram_dictionary_helpers.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/options.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/serialization_helpers.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/types.h_serialized.cpp.pic.o\
        $(BUILD_ROOT)/library/text_processing/dictionary/util.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-text_processing-dictionary -o library/text_processing/dictionary/liblibrary-text_processing-dictionary.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/text_processing/dictionary/liblibrary-text_processing-dictionary.a' '$(BUILD_ROOT)/library/text_processing/dictionary/bpe_builder.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/bpe_dictionary.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/bpe_helpers.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/dictionary.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/dictionary_builder.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/fbs_helpers.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/frequency_based_dictionary.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/frequency_based_dictionary_impl.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/mmap_frequency_based_dictionary.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/mmap_frequency_based_dictionary_impl.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/mmap_hash_table.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/multigram_dictionary_helpers.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/options.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/serialization_helpers.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/util.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/types.h_serialized.cpp.pic.o'

$(BUILD_ROOT)/library/text_processing/dictionary/bpe_builder.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/text_processing/dictionary/bpe_builder.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/bpe_builder.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/bpe_builder.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/bpe_dictionary.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/text_processing/dictionary/bpe_dictionary.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/bpe_dictionary.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/bpe_dictionary.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/bpe_helpers.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/text_processing/dictionary/bpe_helpers.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/bpe_helpers.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/bpe_helpers.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/dictionary.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/text_processing/dictionary/dictionary.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/dictionary.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/dictionary.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/dictionary_builder.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/library/text_processing/dictionary/idl/dictionary_meta_info.fbs.h\
        $(SOURCE_ROOT)/library/text_processing/dictionary/dictionary_builder.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/dictionary_builder.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/dictionary_builder.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/idl/dictionary_meta_info.bfbs\
        ::\
        $(BUILD_ROOT)/library/text_processing/dictionary/idl/dictionary_meta_info.fbs.h\

$(BUILD_ROOT)/library/text_processing/dictionary/idl/dictionary_meta_info.fbs.h\
        ::\
        $(BUILD_ROOT)/contrib/tools/flatc/flatc\
        $(SOURCE_ROOT)/library/text_processing/dictionary/idl/dictionary_meta_info.fbs\
        $(SOURCE_ROOT)/build/scripts/stdout2stderr.py\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary/idl'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/plugins/_unpickler.py' --src-root '$(SOURCE_ROOT)' --build-root '$(BUILD_ROOT)' --data gAJjZmxhdGMKRmxhdGMKcQApgXEBfXECKFUKX2luY2xfZGlyc3EDXXEEKFUCJFNxBVUCJEJxBmVVBV9wYXRocQdVQiRTL2xpYnJhcnkvdGV4dF9wcm9jZXNzaW5nL2RpY3Rpb25hcnkvaWRsL2RpY3Rpb25hcnlfbWV0YV9pbmZvLmZic3EIdYVxCWIu --tools 1 '$(BUILD_ROOT)/contrib/tools/flatc/flatc'

$(BUILD_ROOT)/library/text_processing/dictionary/fbs_helpers.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/library/text_processing/dictionary/idl/dictionary_meta_info.fbs.h\
        $(SOURCE_ROOT)/library/text_processing/dictionary/fbs_helpers.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/fbs_helpers.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/fbs_helpers.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/frequency_based_dictionary.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/library/text_processing/dictionary/idl/dictionary_meta_info.fbs.h\
        $(SOURCE_ROOT)/library/text_processing/dictionary/frequency_based_dictionary.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/frequency_based_dictionary.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/frequency_based_dictionary.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/frequency_based_dictionary_impl.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/library/text_processing/dictionary/idl/dictionary_meta_info.fbs.h\
        $(SOURCE_ROOT)/library/text_processing/dictionary/frequency_based_dictionary_impl.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/frequency_based_dictionary_impl.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/frequency_based_dictionary_impl.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/mmap_frequency_based_dictionary.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/library/text_processing/dictionary/idl/dictionary_meta_info.fbs.h\
        $(SOURCE_ROOT)/library/text_processing/dictionary/mmap_frequency_based_dictionary.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/mmap_frequency_based_dictionary.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/mmap_frequency_based_dictionary.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/mmap_frequency_based_dictionary_impl.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/library/text_processing/dictionary/idl/dictionary_meta_info.fbs.h\
        $(SOURCE_ROOT)/library/text_processing/dictionary/mmap_frequency_based_dictionary_impl.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/mmap_frequency_based_dictionary_impl.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/mmap_frequency_based_dictionary_impl.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/mmap_hash_table.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/text_processing/dictionary/mmap_hash_table.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/mmap_hash_table.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/mmap_hash_table.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/multigram_dictionary_helpers.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/text_processing/dictionary/multigram_dictionary_helpers.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/multigram_dictionary_helpers.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/multigram_dictionary_helpers.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/options.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/text_processing/dictionary/options.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/options.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/options.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/serialization_helpers.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/text_processing/dictionary/serialization_helpers.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/serialization_helpers.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/serialization_helpers.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/types.h_serialized.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/library/text_processing/dictionary/types.h_serialized.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/types.h_serialized.cpp.pic.o' '$(BUILD_ROOT)/library/text_processing/dictionary/types.h_serialized.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/text_processing/dictionary/types.h_serialized.cpp\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser\
        $(SOURCE_ROOT)/library/text_processing/dictionary/types.h\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	'$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' '$(SOURCE_ROOT)/library/text_processing/dictionary/types.h' --include-path library/text_processing/dictionary/types.h --output '$(BUILD_ROOT)/library/text_processing/dictionary/types.h_serialized.cpp'

$(BUILD_ROOT)/library/text_processing/dictionary/util.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/text_processing/dictionary/util.cpp\

	mkdir -p '$(BUILD_ROOT)/library/text_processing/dictionary'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/text_processing/dictionary/util.cpp.pic.o' '$(SOURCE_ROOT)/library/text_processing/dictionary/util.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/threading/local_executor/liblibrary-threading-local_executor.a.mf\
        ::\
        $(BUILD_ROOT)/library/threading/local_executor/liblibrary-threading-local_executor.a\

$(BUILD_ROOT)/library/threading/local_executor/liblibrary-threading-local_executor.a\
        ::\
        $(BUILD_ROOT)/library/threading/local_executor/fwd.cpp.pic.o\
        $(BUILD_ROOT)/library/threading/local_executor/local_executor.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/library/threading/local_executor'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name library-threading-local_executor -o library/threading/local_executor/liblibrary-threading-local_executor.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/library/threading/local_executor/liblibrary-threading-local_executor.a' '$(BUILD_ROOT)/library/threading/local_executor/fwd.cpp.pic.o' '$(BUILD_ROOT)/library/threading/local_executor/local_executor.cpp.pic.o'

$(BUILD_ROOT)/library/threading/local_executor/fwd.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/threading/local_executor/fwd.cpp\

	mkdir -p '$(BUILD_ROOT)/library/threading/local_executor'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/threading/local_executor/fwd.cpp.pic.o' '$(SOURCE_ROOT)/library/threading/local_executor/fwd.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/library/threading/local_executor/local_executor.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/library/threading/local_executor/local_executor.cpp\

	mkdir -p '$(BUILD_ROOT)/library/threading/local_executor'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/library/threading/local_executor/local_executor.cpp.pic.o' '$(SOURCE_ROOT)/library/threading/local_executor/local_executor.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/tools/enum_parser/enum_serialization_runtime/libtools-enum_parser-enum_serialization_runtime.a.mf\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_serialization_runtime/libtools-enum_parser-enum_serialization_runtime.a\

$(BUILD_ROOT)/tools/enum_parser/enum_serialization_runtime/libtools-enum_parser-enum_serialization_runtime.a\
        ::\
        $(BUILD_ROOT)/tools/enum_parser/enum_serialization_runtime/enum_runtime.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/tools/enum_parser/enum_serialization_runtime'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name tools-enum_parser-enum_serialization_runtime -o tools/enum_parser/enum_serialization_runtime/libtools-enum_parser-enum_serialization_runtime.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/tools/enum_parser/enum_serialization_runtime/libtools-enum_parser-enum_serialization_runtime.a' '$(BUILD_ROOT)/tools/enum_parser/enum_serialization_runtime/enum_runtime.cpp.pic.o'

$(BUILD_ROOT)/tools/enum_parser/enum_serialization_runtime/enum_runtime.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/tools/enum_parser/enum_serialization_runtime/enum_runtime.cpp\

	mkdir -p '$(BUILD_ROOT)/tools/enum_parser/enum_serialization_runtime'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/tools/enum_parser/enum_serialization_runtime/enum_runtime.cpp.pic.o' '$(SOURCE_ROOT)/tools/enum_parser/enum_serialization_runtime/enum_runtime.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/tools/fix_elf/fix_elf.mf\
        ::\
        $(BUILD_ROOT)/tools/fix_elf/fix_elf\

$(BUILD_ROOT)/tools/fix_elf/fix_elf\
        ::\
        $(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a\
        $(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a\
        $(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a\
        $(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a\
        $(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a\
        $(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a\
        $(BUILD_ROOT)/library/cpuid_check/cpu_id_check.cpp.pic.o\
        $(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a\
        $(BUILD_ROOT)/library/lfalloc/liblibrary-lfalloc.a\
        $(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a\
        $(BUILD_ROOT)/tools/fix_elf/patch.cpp.pic.o\
        $(BUILD_ROOT)/util/charset/libutil-charset.a\
        $(BUILD_ROOT)/util/libyutil.a\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/vcs_info.py\
        $(SOURCE_ROOT)/build/scripts/c_templates/svn_interface.c\
        $(SOURCE_ROOT)/build/scripts/link_exe.py\

	mkdir -p '$(BUILD_ROOT)/tools/fix_elf'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name fix_elf -o tools/fix_elf/fix_elf.mf -t PROGRAM -Ya,lics -Ya,peers contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a util/charset/libutil-charset.a contrib/libs/zlib/libcontrib-libs-zlib.a contrib/libs/double-conversion/libcontrib-libs-double-conversion.a util/libyutil.a library/malloc/api/liblibrary-malloc-api.a library/lfalloc/liblibrary-lfalloc.a library/colorizer/liblibrary-colorizer.a library/getopt/small/liblibrary-getopt-small.a
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/vcs_info.py' '$(VCS)/vcs.json' '$(BUILD_ROOT)/tools/fix_elf/__vcs_version__.c' '$(SOURCE_ROOT)/build/scripts/c_templates/svn_interface.c'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/tools/fix_elf/__vcs_version__.c.pic.o' '$(BUILD_ROOT)/tools/fix_elf/__vcs_version__.c' '-I$(SOURCE_ROOT)' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16
	cd $(BUILD_ROOT) && '$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_exe.py' ${CXX} library/cpuid_check/cpu_id_check.cpp.pic.o '$(BUILD_ROOT)/tools/fix_elf/__vcs_version__.c.pic.o' '$(BUILD_ROOT)/tools/fix_elf/patch.cpp.pic.o' -o '$(BUILD_ROOT)/tools/fix_elf/fix_elf' -rdynamic --target=x86_64-linux-gnu -Wl,--start-group contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a util/charset/libutil-charset.a contrib/libs/zlib/libcontrib-libs-zlib.a contrib/libs/double-conversion/libcontrib-libs-double-conversion.a util/libyutil.a library/malloc/api/liblibrary-malloc-api.a library/lfalloc/liblibrary-lfalloc.a library/colorizer/liblibrary-colorizer.a library/getopt/small/liblibrary-getopt-small.a -Wl,--end-group -ldl -lrt -Wl,--no-as-needed -lpthread -lrt -ldl -nodefaultlibs -lpthread -lc -lm

$(BUILD_ROOT)/tools/fix_elf/patch.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/tools/fix_elf/patch.cpp\

	mkdir -p '$(BUILD_ROOT)/tools/fix_elf'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/tools/fix_elf/patch.cpp.pic.o' '$(SOURCE_ROOT)/tools/fix_elf/patch.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/charset/libutil-charset.a.mf\
        ::\
        $(BUILD_ROOT)/util/charset/libutil-charset.a\

$(BUILD_ROOT)/util/charset/libutil-charset.a\
        ::\
        $(BUILD_ROOT)/util/charset/all_charset.cpp.pic.o\
        $(BUILD_ROOT)/util/charset/wide_sse41.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/util/charset'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name util-charset -o util/charset/libutil-charset.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/util/charset/libutil-charset.a' '$(BUILD_ROOT)/util/charset/wide_sse41.cpp.pic.o' '$(BUILD_ROOT)/util/charset/all_charset.cpp.pic.o'

$(BUILD_ROOT)/util/charset/all_charset.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/charset/all_charset.cpp\

	mkdir -p '$(BUILD_ROOT)/util/charset'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/charset/all_charset.cpp.pic.o' '$(BUILD_ROOT)/util/charset/all_charset.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/charset/wide_sse41.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/util/charset/wide_sse41.cpp\

	mkdir -p '$(BUILD_ROOT)/util/charset'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/charset/wide_sse41.cpp.pic.o' '$(SOURCE_ROOT)/util/charset/wide_sse41.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse4.1

$(BUILD_ROOT)/util/libyutil.a.mf\
        ::\
        $(BUILD_ROOT)/util/libyutil.a\

$(BUILD_ROOT)/util/libyutil.a\
        ::\
        $(BUILD_ROOT)/util/all_datetime.cpp.pic.o\
        $(BUILD_ROOT)/util/all_digest.cpp.pic.o\
        $(BUILD_ROOT)/util/all_folder.cpp.pic.o\
        $(BUILD_ROOT)/util/all_generic.cpp.pic.o\
        $(BUILD_ROOT)/util/all_memory.cpp.pic.o\
        $(BUILD_ROOT)/util/all_network.cpp.pic.o\
        $(BUILD_ROOT)/util/all_random.cpp.pic.o\
        $(BUILD_ROOT)/util/all_stream.cpp.pic.o\
        $(BUILD_ROOT)/util/all_string.cpp.pic.o\
        $(BUILD_ROOT)/util/all_system_1.cpp.pic.o\
        $(BUILD_ROOT)/util/all_system_2.cpp.pic.o\
        $(BUILD_ROOT)/util/all_thread.cpp.pic.o\
        $(BUILD_ROOT)/util/all_util.cpp.pic.o\
        $(BUILD_ROOT)/util/datetime/parser.rl6.cpp.pic.o\
        $(BUILD_ROOT)/util/digest/city.cpp.pic.o\
        $(BUILD_ROOT)/util/random/random.cpp.pic.o\
        $(BUILD_ROOT)/util/string/cast.cpp.pic.o\
        $(BUILD_ROOT)/util/system/context_x86.o\
        $(BUILD_ROOT)/util/system/mktemp_system.cpp.pic.o\
        $(BUILD_ROOT)/util/system/strlcpy.c.pic.o\
        $(BUILD_ROOT)/util/system/valgrind.cpp.pic.o\
        $(SOURCE_ROOT)/build/scripts/generate_mf.py\
        $(SOURCE_ROOT)/build/scripts/link_lib.py\

	mkdir -p '$(BUILD_ROOT)/util'
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/generate_mf.py' --build-root '$(BUILD_ROOT)' --module-name yutil -o util/libyutil.a.mf -t LIBRARY -Ya,lics -Ya,peers
	'$(PYTHON)' '$(SOURCE_ROOT)/build/scripts/link_lib.py' ar AR '$(BUILD_ROOT)' None '$(BUILD_ROOT)/util/libyutil.a' '$(BUILD_ROOT)/util/digest/city.cpp.pic.o' '$(BUILD_ROOT)/util/random/random.cpp.pic.o' '$(BUILD_ROOT)/util/string/cast.cpp.pic.o' '$(BUILD_ROOT)/util/system/context_x86.o' '$(BUILD_ROOT)/util/system/valgrind.cpp.pic.o' '$(BUILD_ROOT)/util/system/strlcpy.c.pic.o' '$(BUILD_ROOT)/util/system/mktemp_system.cpp.pic.o' '$(BUILD_ROOT)/util/all_datetime.cpp.pic.o' '$(BUILD_ROOT)/util/all_digest.cpp.pic.o' '$(BUILD_ROOT)/util/all_util.cpp.pic.o' '$(BUILD_ROOT)/util/all_folder.cpp.pic.o' '$(BUILD_ROOT)/util/all_generic.cpp.pic.o' '$(BUILD_ROOT)/util/all_memory.cpp.pic.o' '$(BUILD_ROOT)/util/all_network.cpp.pic.o' '$(BUILD_ROOT)/util/all_random.cpp.pic.o' '$(BUILD_ROOT)/util/all_stream.cpp.pic.o' '$(BUILD_ROOT)/util/all_string.cpp.pic.o' '$(BUILD_ROOT)/util/all_system_1.cpp.pic.o' '$(BUILD_ROOT)/util/all_system_2.cpp.pic.o' '$(BUILD_ROOT)/util/all_thread.cpp.pic.o' '$(BUILD_ROOT)/util/datetime/parser.rl6.cpp.pic.o'

$(BUILD_ROOT)/util/all_datetime.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_datetime.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_datetime.cpp.pic.o' '$(BUILD_ROOT)/util/all_datetime.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_digest.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_digest.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_digest.cpp.pic.o' '$(BUILD_ROOT)/util/all_digest.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_folder.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_folder.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_folder.cpp.pic.o' '$(BUILD_ROOT)/util/all_folder.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_generic.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_generic.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_generic.cpp.pic.o' '$(BUILD_ROOT)/util/all_generic.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_memory.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_memory.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_memory.cpp.pic.o' '$(BUILD_ROOT)/util/all_memory.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_network.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_network.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_network.cpp.pic.o' '$(BUILD_ROOT)/util/all_network.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_random.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_random.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_random.cpp.pic.o' '$(BUILD_ROOT)/util/all_random.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_stream.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_stream.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_stream.cpp.pic.o' '$(BUILD_ROOT)/util/all_stream.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_string.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_string.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_string.cpp.pic.o' '$(BUILD_ROOT)/util/all_string.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_system_1.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_system_1.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_system_1.cpp.pic.o' '$(BUILD_ROOT)/util/all_system_1.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_system_2.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_system_2.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_system_2.cpp.pic.o' '$(BUILD_ROOT)/util/all_system_2.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_thread.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_thread.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_thread.cpp.pic.o' '$(BUILD_ROOT)/util/all_thread.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/all_util.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/all_util.cpp\

	mkdir -p '$(BUILD_ROOT)/util'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/all_util.cpp.pic.o' '$(BUILD_ROOT)/util/all_util.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/datetime/parser.rl6.cpp.pic.o\
        ::\
        $(BUILD_ROOT)/util/datetime/parser.rl6.cpp\

	mkdir -p '$(BUILD_ROOT)/util/datetime'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/datetime/parser.rl6.cpp.pic.o' '$(BUILD_ROOT)/util/datetime/parser.rl6.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/datetime/parser.rl6.cpp\
        ::\
        $(BUILD_ROOT)/contrib/tools/ragel6/ragel6\
        $(SOURCE_ROOT)/util/datetime/parser.rl6\

	mkdir -p '$(BUILD_ROOT)/util/datetime'
	'$(BUILD_ROOT)/contrib/tools/ragel6/ragel6' -CG2 '-I$(SOURCE_ROOT)' -o '$(BUILD_ROOT)/util/datetime/parser.rl6.cpp' '$(SOURCE_ROOT)/util/datetime/parser.rl6'

$(BUILD_ROOT)/util/digest/city.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/util/digest/city.cpp\

	mkdir -p '$(BUILD_ROOT)/util/digest'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/digest/city.cpp.pic.o' '$(SOURCE_ROOT)/util/digest/city.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/random/random.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/util/random/random.cpp\

	mkdir -p '$(BUILD_ROOT)/util/random'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/random/random.cpp.pic.o' '$(SOURCE_ROOT)/util/random/random.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/string/cast.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/util/string/cast.cpp\

	mkdir -p '$(BUILD_ROOT)/util/string'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/string/cast.cpp.pic.o' '$(SOURCE_ROOT)/util/string/cast.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/system/context_x86.o\
        ::\
        $(BUILD_ROOT)/contrib/tools/yasm/yasm\
        $(SOURCE_ROOT)/util/system/context_x86.asm\

	mkdir -p '$(BUILD_ROOT)/util/system'
	'$(BUILD_ROOT)/contrib/tools/yasm/yasm' -f elf64 -D UNIX -D _x86_64_ -D_YASM_ -g dwarf2 -I '$(BUILD_ROOT)' -I '$(SOURCE_ROOT)' -I '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' -I '$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' -I '$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -o '$(BUILD_ROOT)/util/system/context_x86.o' '$(SOURCE_ROOT)/util/system/context_x86.asm'

$(BUILD_ROOT)/util/system/mktemp_system.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/util/system/mktemp_system.cpp\

	mkdir -p '$(BUILD_ROOT)/util/system'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/system/mktemp_system.cpp.pic.o' '$(SOURCE_ROOT)/util/system/mktemp_system.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

$(BUILD_ROOT)/util/system/strlcpy.c.pic.o\
        ::\
        $(SOURCE_ROOT)/util/system/strlcpy.c\

	mkdir -p '$(BUILD_ROOT)/util/system'
	${CC} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/system/strlcpy.c.pic.o' '$(SOURCE_ROOT)/util/system/strlcpy.c' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16

$(BUILD_ROOT)/util/system/valgrind.cpp.pic.o\
        ::\
        $(SOURCE_ROOT)/util/system/valgrind.cpp\

	mkdir -p '$(BUILD_ROOT)/util/system'
	${CXX} --target=x86_64-linux-gnu -c -o '$(BUILD_ROOT)/util/system/valgrind.cpp.pic.o' '$(SOURCE_ROOT)/util/system/valgrind.cpp' '-I$(BUILD_ROOT)' '-I$(SOURCE_ROOT)' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxx/include' '-I$(SOURCE_ROOT)/contrib/libs/cxxsupp/libcxxrt' '-I$(SOURCE_ROOT)/contrib/libs/double-conversion/include' -pipe -m64 -O3 -g -ggnu-pubnames -fPIC -fexceptions -W -Wall -Wno-parentheses -DFAKEID=5020880 '-DARCADIA_ROOT=$(SOURCE_ROOT)' '-DARCADIA_BUILD_ROOT=$(BUILD_ROOT)' -D_THREAD_SAFE -D_PTHREADS -D_REENTRANT -D_LIBCPP_ENABLE_CXX17_REMOVED_FEATURES -D_LARGEFILE_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D_FILE_OFFSET_BITS=64 -D_GNU_SOURCE -DNDEBUG -D__LONG_LONG_SUPPORTED -DSSE_ENABLED=1 -DSSE3_ENABLED=1 -DSSSE3_ENABLED=1 -DSSE41_ENABLED=1 -DSSE42_ENABLED=1 -DPOPCNT_ENABLED=1 -DCX16_ENABLED=1 -DCATBOOST_OPENSOURCE=yes -nostdinc++ -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mpopcnt -mcx16 -std=c++1z -Woverloaded-virtual -Wno-invalid-offsetof -Wno-attributes -Wno-dynamic-exception-spec -Wno-register -Wimport-preprocessor-directive-pedantic -Wno-c++17-extensions -Wno-exceptions -Wno-inconsistent-missing-override -Wno-undefined-var-template -DCATBOOST_OPENSOURCE=yes -nostdinc++

clean\
        ::\

	rm -f '$(BUILD_ROOT)/catboost/libs/model_interface/libcatboostmodel.so.1' '$(BUILD_ROOT)/catboost/libs/model_interface/libcatboostmodel.so.1.mf' '$(BUILD_ROOT)/catboost/libs/model_interface/libcatboostmodel.so'
	rm -f '$(BUILD_ROOT)/catboost/libs/cat_feature/libcatboost-libs-cat_feature.a' '$(BUILD_ROOT)/catboost/libs/cat_feature/libcatboost-libs-cat_feature.a.mf'
	rm -f '$(BUILD_ROOT)/catboost/libs/cat_feature/cat_feature.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/ctr_description/libcatboost-libs-ctr_description.a' '$(BUILD_ROOT)/catboost/libs/ctr_description/libcatboost-libs-ctr_description.a.mf'
	rm -f '$(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.h_serialized.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/ctr_description/ctr_type.h_serialized.cpp'
	rm -f '$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser' '$(BUILD_ROOT)/tools/enum_parser/enum_parser/enum_parser.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a' '$(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/cppdemangle/demangle.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/addtf3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/clzti2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/comparetf2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divdc3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divsc3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divtf3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divti3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divxc3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extenddftf2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extendsftf2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixdfti.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixsfti.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixtfsi.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixunsdfti.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatditf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatsitf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattidf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattisf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatunditf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntidf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntisf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/gcc_personality_v0.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/int_util.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/modti3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muldc3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muloti4.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulsc3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/multf3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulxc3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/popcountdi2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/subtf3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfdf2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfsf2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivmodti4.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivti3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/umodti3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/algorithm.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/any.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/bind.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/charconv.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/chrono.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/condition_variable.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/debug.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/exception.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/functional.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/future.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/hash.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/ios.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/iostream.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/locale.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/memory.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/mutex.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/new.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/optional.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/random.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/regex.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/shared_mutex.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/stdexcept.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/string.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/strstream.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/system_error.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/thread.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/typeinfo.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/utility.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/valarray.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/variant.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/vector.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/auxhelper.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/dynamic_cast.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/exception.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/guard.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/memory.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/stdexcept.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/typeinfo.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/unwind.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a' '$(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/bignum-dtoa.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/bignum.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/cached-powers.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/diy-fp.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/double-conversion.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/fast-dtoa.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/fixed-dtoa.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/strtod.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a' '$(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-EHABI.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-sjlj.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1-gcc-ext.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersRestore.S.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersSave.S.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/libunwind.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a' '$(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/adler32.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/compress.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/crc32.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/deflate.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/gzclose.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/gzlib.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/gzread.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/gzwrite.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/infback.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/inffast.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/inflate.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/inftrees.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/trees.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/uncompr.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/zutil.c.pic.o'
	rm -f '$(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a' '$(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a.mf'
	rm -f '$(BUILD_ROOT)/library/colorizer/colors.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/colorizer/output.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/cppparser/liblibrary-cppparser.a' '$(BUILD_ROOT)/library/cppparser/liblibrary-cppparser.a.mf'
	rm -f '$(BUILD_ROOT)/library/cppparser/parser.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/cpuid_check/cpu_id_check.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a' '$(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a.mf'
	rm -f '$(BUILD_ROOT)/library/getopt/small/last_getopt.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/last_getopt_easy_setup.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/last_getopt_opt.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/last_getopt_opts.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/last_getopt_parse_result.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/last_getopt_parser.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/modchooser.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/opt.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/opt2.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/posix_getopt.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/ygetopt.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/lfalloc/liblibrary-lfalloc.a' '$(BUILD_ROOT)/library/lfalloc/liblibrary-lfalloc.a.mf'
	rm -f '$(BUILD_ROOT)/library/lfalloc/lf_allocX64.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a' '$(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a.mf'
	rm -f '$(BUILD_ROOT)/library/malloc/api/malloc.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/tools/enum_parser/enum_parser/main.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/tools/enum_parser/parse_enum/libtools-enum_parser-parse_enum.a' '$(BUILD_ROOT)/tools/enum_parser/parse_enum/libtools-enum_parser-parse_enum.a.mf'
	rm -f '$(BUILD_ROOT)/tools/enum_parser/parse_enum/parse_enum.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/charset/libutil-charset.a' '$(BUILD_ROOT)/util/charset/libutil-charset.a.mf'
	rm -f '$(BUILD_ROOT)/util/charset/all_charset.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/charset/all_charset.cpp'
	rm -f '$(BUILD_ROOT)/util/charset/wide_sse41.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/libyutil.a' '$(BUILD_ROOT)/util/libyutil.a.mf'
	rm -f '$(BUILD_ROOT)/util/all_datetime.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_datetime.cpp'
	rm -f '$(BUILD_ROOT)/util/all_digest.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_digest.cpp'
	rm -f '$(BUILD_ROOT)/util/all_folder.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_folder.cpp'
	rm -f '$(BUILD_ROOT)/util/all_generic.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_generic.cpp'
	rm -f '$(BUILD_ROOT)/util/all_memory.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_memory.cpp'
	rm -f '$(BUILD_ROOT)/util/all_network.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_network.cpp'
	rm -f '$(BUILD_ROOT)/util/all_random.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_random.cpp'
	rm -f '$(BUILD_ROOT)/util/all_stream.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_stream.cpp'
	rm -f '$(BUILD_ROOT)/util/all_string.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_string.cpp'
	rm -f '$(BUILD_ROOT)/util/all_system_1.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_system_1.cpp'
	rm -f '$(BUILD_ROOT)/util/all_system_2.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_system_2.cpp'
	rm -f '$(BUILD_ROOT)/util/all_thread.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_thread.cpp'
	rm -f '$(BUILD_ROOT)/util/all_util.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_util.cpp'
	rm -f '$(BUILD_ROOT)/util/datetime/parser.rl6.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/datetime/parser.rl6.cpp'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/ragel6' '$(BUILD_ROOT)/contrib/tools/ragel6/ragel6.mf'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/all_cd.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/all_cd.cpp'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/all_cs.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/all_cs.cpp'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/all_fs.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/all_fs.cpp'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/all_go.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/all_go.cpp'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/all_ml.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/all_ml.cpp'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/all_other.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/all_other.cpp'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/all_r.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/all_r.cpp'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/rlparse.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/ragel6/rlscan.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/digest/city.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/random/random.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/string/cast.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/system/context_x86.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/yasm' '$(BUILD_ROOT)/contrib/tools/yasm/yasm.mf'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/frontends/yasm/yasm-options.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/frontends/yasm/yasm.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/assocdat.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-align.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-data.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-incbin.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-org.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bc-reserve.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bitvect.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/bytecode.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/cmake-module.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/errwarn.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/expr.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/file.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/floatnum.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/hamt.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/insn.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/intnum.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/inttree.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/linemap.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/md5.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/mergesort.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/phash.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/section.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/strcasecmp.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/strsep.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/symrec.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/valparam.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/value.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/xmalloc.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/libyasm/xstrdup.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/lc3b/lc3barch.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/lc3b/lc3bbc.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86arch.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86bc.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86expr.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/arch/x86/x86id.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-dbgfmt.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-symline.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/codeview/cv-type.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-aranges.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-dbgfmt.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-info.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/dwarf2/dwarf2-line.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/null/null-dbgfmt.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/dbgfmts/stabs/stabs-dbgfmt.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/gas-token.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/init_plugin.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/lc3bid.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/listfmts/nasm/nasm-listfmt.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/nasm-token.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/bin/bin-objfmt.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/coff/coff-objfmt.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/coff/win64-except.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/dbg/dbg-objfmt.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-objfmt.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-amd64.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-x32.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf-x86-x86.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/elf/elf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/macho/macho-objfmt.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/rdf/rdf-objfmt.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/objfmts/xdf/xdf-objfmt.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parse-intel.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parse.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/gas/gas-parser.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/nasm/nasm-parse.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/parsers/nasm/nasm-parser.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/cpp/cpp-preproc.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/gas/gas-eval.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/gas/gas-preproc.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-eval.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-pp.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasm-preproc.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/nasm/nasmlib.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/preprocs/raw/raw-preproc.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/x86cpu.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/yasm/modules/x86regtmod.c.pic.o'
	rm -f '$(BUILD_ROOT)/util/system/mktemp_system.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/system/strlcpy.c.pic.o'
	rm -f '$(BUILD_ROOT)/util/system/valgrind.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/data_types/libcatboost-libs-data_types.a' '$(BUILD_ROOT)/catboost/libs/data_types/libcatboost-libs-data_types.a.mf'
	rm -f '$(BUILD_ROOT)/catboost/libs/data_types/pair.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/data_types/text.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/data_util/exists_checker.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/data_util/libcatboost-libs-data_util.a' '$(BUILD_ROOT)/catboost/libs/data_util/libcatboost-libs-data_util.a.mf'
	rm -f '$(BUILD_ROOT)/catboost/libs/data_util/path_with_scheme.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/data_util/line_data_reader.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/libcatboost-libs-helpers.a' '$(BUILD_ROOT)/catboost/libs/helpers/libcatboost-libs-helpers.a.mf'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/array_subset.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/borders_io.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/checksum.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/clear_array.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/compare.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/compression.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/cpu_random.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/dbg_output.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/dense_hash.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/dense_hash_view.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/double_array_iterator.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/dynamic_iterator.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/element_range.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/exception.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/guid.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/hash.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/int_cast.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/interrupt.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/map_merge.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/math_utils.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/matrix.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/maybe_data.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/maybe_owning_array_holder.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/mem_usage.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/parallel_tasks.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/permutation.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/power_hash.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/progress_helper.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/query_info_helper.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/resource_constrained_executor.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/resource_holder.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/restorable_rng.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/serialization.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/set.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/sparse_array.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/sparse_array.h_serialized.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/sparse_array.h_serialized.cpp'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/vec_list.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/vector_helpers.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/wx_test.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/helpers/xml_output.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/index_range/libcatboost-libs-index_range.a' '$(BUILD_ROOT)/catboost/libs/index_range/libcatboost-libs-index_range.a.mf'
	rm -f '$(BUILD_ROOT)/catboost/libs/index_range/index_range.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/logging/libcatboost-libs-logging.a' '$(BUILD_ROOT)/catboost/libs/logging/libcatboost-libs-logging.a.mf'
	rm -f '$(BUILD_ROOT)/catboost/libs/logging/logging.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/logging/logging_level.h_serialized.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/logging/logging_level.h_serialized.cpp'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/model_import_interface.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/liblibs-model-thin.a' '$(BUILD_ROOT)/catboost/libs/model/thin/liblibs-model-thin.a.mf'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/evaluator_impl.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/formula_evaluator.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/cpu/quantization.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_data.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_helpers.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_provider.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/ctr_value_table.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/flatbuffers/ctr_data.fbs.h' '$(BUILD_ROOT)/catboost/libs/model/flatbuffers/ctr_data.bfbs'
	rm -f '$(BUILD_ROOT)/contrib/tools/flatc/flatc' '$(BUILD_ROOT)/contrib/tools/flatc/flatc.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/liblibs-flatbuffers-flatc.a' '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/liblibs-flatbuffers-flatc.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/code_generators.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/flatc.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_cpp.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_fbs.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_general.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_go.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_json_schema.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/flatc/__/src/idl_gen_python.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a' '$(BUILD_ROOT)/contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_gen_text.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_parser.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/reflection.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/util.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/tools/flatc/__/__/libs/flatbuffers/src/flatc_main.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/flatbuffers/features.fbs.h' '$(BUILD_ROOT)/catboost/libs/model/flatbuffers/features.bfbs'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/flatbuffers/model.fbs.h' '$(BUILD_ROOT)/catboost/libs/model/flatbuffers/model.bfbs'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/cuda/no_cuda_stub.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/eval_processing.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/features.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/model.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/model_build_helper.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/online_ctr.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/__/static_ctr_provider.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/ctr_provider.h_serialized.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/ctr_provider.h_serialized.cpp'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/enums.h_serialized.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/enums.h_serialized.cpp'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/features.h_serialized.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/features.h_serialized.cpp'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/split.h_serialized.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/model/thin/split.h_serialized.cpp'
	rm -f '$(BUILD_ROOT)/catboost/libs/model_interface/c_api.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/libcatboost-libs-options.a' '$(BUILD_ROOT)/catboost/libs/options/libcatboost-libs-options.a.mf'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/analytical_mode_params.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/binarization_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/boosting_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/bootstrap_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/cat_feature_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/catboost_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/check_train_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/cross_validation_params.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/data_processing_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/defaults_helper.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/enum_helpers.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/enums.h_serialized.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/enums.h_serialized.cpp'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/feature_eval_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/json_helper.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/json_helper.h_serialized.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/json_helper.h_serialized.cpp'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/load_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/loss_description.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/metric_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/model_based_eval_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/multiclass_label_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/oblivious_tree_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/option.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/output_file_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/overfitting_detector_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/plain_options_helper.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/split_params.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/system_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/catboost/libs/options/text_feature_options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/avx2/liblibs-base64-avx2.a' '$(BUILD_ROOT)/contrib/libs/base64/avx2/liblibs-base64-avx2.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/avx2/codec_avx2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/avx2/lib.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/neon32/liblibs-base64-neon32.a' '$(BUILD_ROOT)/contrib/libs/base64/neon32/liblibs-base64-neon32.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/neon32/codec_neon32.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/neon32/lib.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/neon64/liblibs-base64-neon64.a' '$(BUILD_ROOT)/contrib/libs/base64/neon64/liblibs-base64-neon64.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/neon64/codec_neon64.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/neon64/lib.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/plain32/liblibs-base64-plain32.a' '$(BUILD_ROOT)/contrib/libs/base64/plain32/liblibs-base64-plain32.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/plain32/codec_plain.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/plain32/lib.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/plain64/liblibs-base64-plain64.a' '$(BUILD_ROOT)/contrib/libs/base64/plain64/liblibs-base64-plain64.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/plain64/codec_plain.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/plain64/lib.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/ssse3/liblibs-base64-ssse3.a' '$(BUILD_ROOT)/contrib/libs/base64/ssse3/liblibs-base64-ssse3.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/ssse3/codec_ssse3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/base64/ssse3/lib.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a' '$(BUILD_ROOT)/contrib/libs/cppdemangle/libcontrib-libs-cppdemangle.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/cppdemangle/demangle.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/crcutil/libcontrib-libs-crcutil.a' '$(BUILD_ROOT)/contrib/libs/crcutil/libcontrib-libs-crcutil.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/crcutil/crc32c_sse4.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/crcutil/interface.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/crcutil/multiword_128_64_gcc_amd64_sse2.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_gcc_amd64_asm.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_gcc_i386_mmx.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/crcutil/multiword_64_64_intrinsic_i386_mmx.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a' '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/liblibs-cxxsupp-builtins.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/addtf3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/clzti2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/comparetf2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divdc3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divsc3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divtf3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divti3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/divxc3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extenddftf2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/extendsftf2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixdfti.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixsfti.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixtfsi.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/fixunsdfti.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatditf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatsitf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattidf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floattisf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatunditf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntidf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/floatuntisf.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/gcc_personality_v0.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/int_util.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/modti3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muldc3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/muloti4.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulsc3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/multf3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/mulxc3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/popcountdi2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/subtf3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfdf2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/trunctfsf2.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivmodti4.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/udivti3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/builtins/umodti3.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/liblibs-cxxsupp-libcxx.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/algorithm.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/any.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/bind.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/charconv.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/chrono.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/condition_variable.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/debug.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/exception.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/functional.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/future.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/hash.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/ios.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/iostream.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/locale.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/memory.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/mutex.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/new.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/optional.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/random.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/regex.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/shared_mutex.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/stdexcept.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/string.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/strstream.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/system_error.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/thread.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/typeinfo.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/utility.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/valarray.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/variant.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxx/src/vector.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a' '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/liblibs-cxxsupp-libcxxrt.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/auxhelper.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/dynamic_cast.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/exception.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/guard.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/memory.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/stdexcept.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/typeinfo.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/cxxsupp/libcxxrt/unwind.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a' '$(BUILD_ROOT)/contrib/libs/double-conversion/libcontrib-libs-double-conversion.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/bignum-dtoa.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/bignum.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/cached-powers.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/diy-fp.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/double-conversion.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/fast-dtoa.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/fixed-dtoa.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/double-conversion/strtod.cc.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a' '$(BUILD_ROOT)/contrib/libs/flatbuffers/libcontrib-libs-flatbuffers.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_gen_text.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/idl_parser.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/reflection.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/flatbuffers/src/util.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a' '$(BUILD_ROOT)/contrib/libs/libunwind_master/libcontrib-libs-libunwind_master.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-EHABI.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/Unwind-sjlj.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1-gcc-ext.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindLevel1.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersRestore.S.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/UnwindRegistersSave.S.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/libunwind_master/src/libunwind.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/nayuki_md5/libcontrib-libs-nayuki_md5.a' '$(BUILD_ROOT)/contrib/libs/nayuki_md5/libcontrib-libs-nayuki_md5.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/nayuki_md5/md5-fast-x8664.S.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a' '$(BUILD_ROOT)/contrib/libs/zlib/libcontrib-libs-zlib.a.mf'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/adler32.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/compress.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/crc32.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/deflate.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/gzclose.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/gzlib.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/gzread.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/gzwrite.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/infback.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/inffast.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/inflate.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/inftrees.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/trees.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/uncompr.c.pic.o'
	rm -f '$(BUILD_ROOT)/contrib/libs/zlib/zutil.c.pic.o'
	rm -f '$(BUILD_ROOT)/library/binsaver/liblibrary-binsaver.a' '$(BUILD_ROOT)/library/binsaver/liblibrary-binsaver.a.mf'
	rm -f '$(BUILD_ROOT)/library/binsaver/bin_saver.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/binsaver/blob_io.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/binsaver/buffered_io.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/binsaver/mem_io.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/binsaver/util_stream_io.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a' '$(BUILD_ROOT)/library/colorizer/liblibrary-colorizer.a.mf'
	rm -f '$(BUILD_ROOT)/library/colorizer/colors.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/colorizer/output.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/containers/2d_array/liblibrary-containers-2d_array.a' '$(BUILD_ROOT)/library/containers/2d_array/liblibrary-containers-2d_array.a.mf'
	rm -f '$(BUILD_ROOT)/library/containers/2d_array/2d_array.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/containers/dense_hash/liblibrary-containers-dense_hash.a' '$(BUILD_ROOT)/library/containers/dense_hash/liblibrary-containers-dense_hash.a.mf'
	rm -f '$(BUILD_ROOT)/library/containers/dense_hash/dense_hash.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/containers/flat_hash/lib/libcontainers-flat_hash-lib.a' '$(BUILD_ROOT)/library/containers/flat_hash/lib/libcontainers-flat_hash-lib.a.mf'
	rm -f '$(BUILD_ROOT)/library/containers/flat_hash/lib/containers.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/containers/flat_hash/lib/expanders.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/containers/flat_hash/lib/iterator.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/containers/flat_hash/lib/map.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/containers/flat_hash/lib/probings.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/containers/flat_hash/lib/set.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/containers/flat_hash/lib/size_fitters.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/containers/flat_hash/lib/table.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/containers/flat_hash/lib/value_markers.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/containers/flat_hash/liblibrary-containers-flat_hash.a' '$(BUILD_ROOT)/library/containers/flat_hash/liblibrary-containers-flat_hash.a.mf'
	rm -f '$(BUILD_ROOT)/library/containers/flat_hash/flat_hash.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/dbg_output/liblibrary-dbg_output.a' '$(BUILD_ROOT)/library/dbg_output/liblibrary-dbg_output.a.mf'
	rm -f '$(BUILD_ROOT)/library/dbg_output/dump.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/dbg_output/dumpers.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/dbg_output/engine.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/digest/crc32c/liblibrary-digest-crc32c.a' '$(BUILD_ROOT)/library/digest/crc32c/liblibrary-digest-crc32c.a.mf'
	rm -f '$(BUILD_ROOT)/library/digest/crc32c/crc32c.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/digest/md5/liblibrary-digest-md5.a' '$(BUILD_ROOT)/library/digest/md5/liblibrary-digest-md5.a.mf'
	rm -f '$(BUILD_ROOT)/library/digest/md5/md5.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/fast_exp/liblibrary-fast_exp.a' '$(BUILD_ROOT)/library/fast_exp/liblibrary-fast_exp.a.mf'
	rm -f '$(BUILD_ROOT)/library/fast_exp/fast_exp.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/fast_exp/fast_exp_avx2.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/fast_exp/fast_exp_sse2.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a' '$(BUILD_ROOT)/library/getopt/small/liblibrary-getopt-small.a.mf'
	rm -f '$(BUILD_ROOT)/library/getopt/small/last_getopt.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/last_getopt_easy_setup.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/last_getopt_opt.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/last_getopt_opts.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/last_getopt_parse_result.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/last_getopt_parser.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/modchooser.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/opt.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/opt2.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/posix_getopt.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/getopt/small/ygetopt.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/grid_creator/liblibrary-grid_creator.a' '$(BUILD_ROOT)/library/grid_creator/liblibrary-grid_creator.a.mf'
	rm -f '$(BUILD_ROOT)/library/grid_creator/binarization.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/grid_creator/binarization.h_serialized.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/grid_creator/binarization.h_serialized.cpp'
	rm -f '$(BUILD_ROOT)/library/json/common/liblibrary-json-common.a' '$(BUILD_ROOT)/library/json/common/liblibrary-json-common.a.mf'
	rm -f '$(BUILD_ROOT)/library/json/common/defs.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/json/fast_sax/liblibrary-json-fast_sax.a' '$(BUILD_ROOT)/library/json/fast_sax/liblibrary-json-fast_sax.a.mf'
	rm -f '$(BUILD_ROOT)/library/json/fast_sax/parser.rl6.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/json/fast_sax/parser.rl6.cpp'
	rm -f '$(BUILD_ROOT)/library/json/fast_sax/unescape.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/json/liblibrary-json.a' '$(BUILD_ROOT)/library/json/liblibrary-json.a.mf'
	rm -f '$(BUILD_ROOT)/library/json/json_prettifier.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/json/json_reader.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/json/json_writer.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/json/rapidjson_helpers.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/json/writer/liblibrary-json-writer.a' '$(BUILD_ROOT)/library/json/writer/liblibrary-json-writer.a.mf'
	rm -f '$(BUILD_ROOT)/library/json/writer/json.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/json/writer/json_value.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/json/writer/json_value.h_serialized.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/json/writer/json_value.h_serialized.cpp'
	rm -f '$(BUILD_ROOT)/library/logger/global/liblibrary-logger-global.a' '$(BUILD_ROOT)/library/logger/global/liblibrary-logger-global.a.mf'
	rm -f '$(BUILD_ROOT)/library/logger/global/common.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/logger/global/global.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/logger/global/rty_formater.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/logger/liblibrary-logger.a' '$(BUILD_ROOT)/library/logger/liblibrary-logger.a.mf'
	rm -f '$(BUILD_ROOT)/library/logger/backend.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/logger/element.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/logger/file.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/logger/filter.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/logger/log.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/logger/null.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/logger/priority.h_serialized.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/logger/priority.h_serialized.cpp'
	rm -f '$(BUILD_ROOT)/library/logger/rotating_file.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/logger/stream.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/logger/system.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/logger/thread.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a' '$(BUILD_ROOT)/library/malloc/api/liblibrary-malloc-api.a.mf'
	rm -f '$(BUILD_ROOT)/library/malloc/api/malloc.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/object_factory/liblibrary-object_factory.a' '$(BUILD_ROOT)/library/object_factory/liblibrary-object_factory.a.mf'
	rm -f '$(BUILD_ROOT)/library/object_factory/object_factory.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/pop_count/liblibrary-pop_count.a' '$(BUILD_ROOT)/library/pop_count/liblibrary-pop_count.a.mf'
	rm -f '$(BUILD_ROOT)/library/pop_count/popcount.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/string_utils/base64/liblibrary-string_utils-base64.a' '$(BUILD_ROOT)/library/string_utils/base64/liblibrary-string_utils-base64.a.mf'
	rm -f '$(BUILD_ROOT)/library/string_utils/base64/base64.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/string_utils/relaxed_escaper/liblibrary-string_utils-relaxed_escaper.a' '$(BUILD_ROOT)/library/string_utils/relaxed_escaper/liblibrary-string_utils-relaxed_escaper.a.mf'
	rm -f '$(BUILD_ROOT)/library/string_utils/relaxed_escaper/relaxed_escaper.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/svnversion/liblibrary-svnversion.a' '$(BUILD_ROOT)/library/svnversion/liblibrary-svnversion.a.mf'
	rm -f '$(BUILD_ROOT)/library/svnversion/svn_interface.c.pic.o'
	rm -f '$(BUILD_ROOT)/library/svnversion/svnversion.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/liblibrary-text_processing-dictionary.a' '$(BUILD_ROOT)/library/text_processing/dictionary/liblibrary-text_processing-dictionary.a.mf'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/bpe_builder.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/bpe_dictionary.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/bpe_helpers.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/dictionary.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/dictionary_builder.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/idl/dictionary_meta_info.fbs.h' '$(BUILD_ROOT)/library/text_processing/dictionary/idl/dictionary_meta_info.bfbs'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/fbs_helpers.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/frequency_based_dictionary.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/frequency_based_dictionary_impl.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/mmap_frequency_based_dictionary.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/mmap_frequency_based_dictionary_impl.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/mmap_hash_table.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/multigram_dictionary_helpers.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/options.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/serialization_helpers.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/types.h_serialized.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/types.h_serialized.cpp'
	rm -f '$(BUILD_ROOT)/library/text_processing/dictionary/util.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/threading/local_executor/liblibrary-threading-local_executor.a' '$(BUILD_ROOT)/library/threading/local_executor/liblibrary-threading-local_executor.a.mf'
	rm -f '$(BUILD_ROOT)/library/threading/local_executor/fwd.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/library/threading/local_executor/local_executor.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/tools/enum_parser/enum_serialization_runtime/libtools-enum_parser-enum_serialization_runtime.a' '$(BUILD_ROOT)/tools/enum_parser/enum_serialization_runtime/libtools-enum_parser-enum_serialization_runtime.a.mf'
	rm -f '$(BUILD_ROOT)/tools/enum_parser/enum_serialization_runtime/enum_runtime.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/tools/fix_elf/fix_elf' '$(BUILD_ROOT)/tools/fix_elf/fix_elf.mf'
	rm -f '$(BUILD_ROOT)/tools/fix_elf/patch.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/charset/libutil-charset.a' '$(BUILD_ROOT)/util/charset/libutil-charset.a.mf'
	rm -f '$(BUILD_ROOT)/util/charset/all_charset.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/charset/wide_sse41.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/libyutil.a' '$(BUILD_ROOT)/util/libyutil.a.mf'
	rm -f '$(BUILD_ROOT)/util/all_datetime.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_digest.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_folder.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_generic.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_memory.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_network.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_random.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_stream.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_string.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_system_1.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_system_2.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_thread.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/all_util.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/datetime/parser.rl6.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/datetime/parser.rl6.cpp'
	rm -f '$(BUILD_ROOT)/util/digest/city.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/random/random.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/string/cast.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/system/context_x86.o'
	rm -f '$(BUILD_ROOT)/util/system/mktemp_system.cpp.pic.o'
	rm -f '$(BUILD_ROOT)/util/system/strlcpy.c.pic.o'
	rm -f '$(BUILD_ROOT)/util/system/valgrind.cpp.pic.o'
.PHONY : clean

help\
        ::\

	@echo 'The following are some of the valid targets for this Makefile:'
	@echo '    all'
	@echo '    clean'
	@echo ''
	@echo 'Used variables:'
	@echo '    BUILD_ROOT      Path to the build directory (default: $(shell pwd))'
	@echo '    SOURCE_ROOT     Path to the source directory (default: $(shell pwd))'
	@echo '    CC              Path to None '
	@echo '    CXX             Path to None '
	@echo '    PYTHON          Path to Python 2.7 (default: $(shell which python))'
.PHONY : help
