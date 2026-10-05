#import "../nelson_help.typ": *

= lasso <statistics:5_regression.lasso>

Regularisation lasso et elastic net pour modeles lineaires.

== Syntaxe

- #raw("B = lasso(X, y)");
- #raw("B = lasso(X, y, Name, Value)");
- #raw("[B, FitInfo] = lasso(...)");

== Description

#strong[lasso]; ajuste des modeles lineaires regularises L1 et elastic-net par descente de coordonnees.

 Les options nom-valeur prises en charge sont #strong[Alpha];, #strong[Lambda];, #strong[LambdaRatio];, #strong[NumLambda];, #strong[Standardize];, #strong[Intercept];, #strong[MaxIter];, #strong[RelTol]; et #strong[Weights];.


== Exemple

``````matlab
X = randn(100, 5);
y = X * [0; 2; 0; -3; 0] + 0.1 * randn(100, 1);
[B, FitInfo] = lasso(X, y, 'NumLambda', 10)
``````


== Voir aussi

#nlink(<statistics:5_regression.ridge>)[ridge];, #nlink(<statistics:5_regression.regress>)[regress];, #nlink(<statistics:5_regression.robustfit>)[robustfit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
