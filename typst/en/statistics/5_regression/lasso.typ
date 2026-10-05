#import "../nelson_help.typ": *

= lasso <statistics:5_regression.lasso>

Lasso and elastic net regularization for linear models.

== Syntax

- #raw("B = lasso(X, y)");
- #raw("B = lasso(X, y, Name, Value)");
- #raw("[B, FitInfo] = lasso(...)");

== Description

#strong[lasso]; fits L1 and elastic-net regularized linear models using coordinate descent.

 Supported name-value options are #strong[Alpha];, #strong[Lambda];, #strong[LambdaRatio];, #strong[NumLambda];, #strong[Standardize];, #strong[Intercept];, #strong[MaxIter];, #strong[RelTol];, and #strong[Weights];.


== Example

``````matlab
X = randn(100, 5);
y = X * [0; 2; 0; -3; 0] + 0.1 * randn(100, 1);
[B, FitInfo] = lasso(X, y, 'NumLambda', 10)
``````


== See also

#nlink(<statistics:5_regression.ridge>)[ridge];, #nlink(<statistics:5_regression.regress>)[regress];, #nlink(<statistics:5_regression.robustfit>)[robustfit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
