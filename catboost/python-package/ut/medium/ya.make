

PYTEST()

SIZE(MEDIUM)

IF(AUTOCHECK)
    REQUIREMENTS(cpu:4 network:full)
ELSE()
    REQUIREMENTS(cpu:2 network:full)
ENDIF()

FORK_SUBTESTS()
SPLIT_FACTOR(40)

PEERDIR(
    contrib/python/graphviz
    contrib/python/pandas
    contrib/python/numpy
    contrib/python/six
    library/python/pytest
    catboost/python-package/lib
    catboost/pytest/lib
)

TEST_SRCS(
    conftest.py
    test.py
    test_whl.py
)

DATA(
    arcadia/catboost/pytest/data
    arcadia/catboost/python-package
)

DEPENDS(
    catboost/tools/model_comparator
    catboost/python-package/catboost/no_cuda
    catboost/python-package/ut/medium/python_binary
)

END()
