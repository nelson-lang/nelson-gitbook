#import "../nelson_help.typ": *

= ridge <statistics:5_regression.ridge>

Ridge regression.

== Syntax

- #raw("B = ridge(y, X, k)");
- #raw("B = ridge(y, X, k, scaled)");

== Description

#strong[ridge]; returns coefficient estimates for ridge regression models of response vector #strong[y]; on predictor matrix #strong[X];.

 Predictors are centered and scaled before fitting. If #strong[scaled]; is #strong[0];, coefficients are restored to the original predictor scale and an intercept row is included.


== Example

``````matlab
y = [1; 2.1; 2.9; 4.2; 5.1; 5.9];
X = [(1:6)' [2; 1; 4; 3; 7; 6]];
B = ridge(y, X, [0 0.5 2])
``````


== See also

#nlink(<statistics:5_regression.regress>)[regress];, #nlink(<statistics:5_regression.robustfit>)[robustfit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
