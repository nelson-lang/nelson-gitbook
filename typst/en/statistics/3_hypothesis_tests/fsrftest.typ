#import "../nelson_help.typ": *

= fsrftest <statistics:3_hypothesis_tests.fsrftest>

Rank predictors using univariate regression F-tests.

== Syntax

- #raw("idx = fsrftest(X, y)");
- #raw("[idx, scores] = fsrftest(X, y)");
- #raw("[idx, scores] = fsrftest(X, y, Name, Value)");

== Description

#strong[fsrftest]; ranks predictors by applying an independent regression F-test to each column of X.

 Supported name-value options are CategoricalPredictors, NumBins, UseMissing, and Weights. idx contains predictor indices ordered by decreasing score. scores contains one score per predictor.


== Example

``````matlab
X = [1 0 3; 2 1 2; 3 0 1; 4 1 2; 5 0 3; 6 1 4];
y = [1; 2; 2; 4; 4; 7];
[idx, scores] = fsrftest(X, y, 'NumBins', 2)
``````


== See also

#nlink(<statistics:8_dimension_reduction_feature_selection.relieff>)[relieff];, #nlink(<statistics:8_dimension_reduction_feature_selection.sequentialfs>)[sequentialfs];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
