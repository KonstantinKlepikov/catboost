from .core import get_catboost_bin_module

_catboost = get_catboost_bin_module()
is_groupwise_metric = _catboost.is_groupwise_metric
is_multiclass_metric = _catboost.is_multiclass_metric
is_pairwise_metric = _catboost.is_pairwise_metric
is_maximizable_metric = _catboost.is_maximizable_metric
is_minimizable_metric = _catboost.is_minimizable_metric
