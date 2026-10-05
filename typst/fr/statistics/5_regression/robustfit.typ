#import "../nelson_help.typ": *

= robustfit <statistics:5_regression.robustfit>

Regression lineaire robuste.

== Syntaxe

- #raw("b = robustfit(X, y)");
- #raw("b = robustfit(X, y, wfun, tune, const)");
- #raw("[b, stats] = robustfit(...)");

== Description

#strong[robustfit]; ajuste un modele de regression lineaire par moindres carres iterativement reponderes.

 Par defaut, une colonne constante est ajoutee avant l'ajustement. Les fonctions de poids prises en charge incluent #strong[bisquare];, #strong[huber];, #strong[fair];, #strong[cauchy];, #strong[welsch];, #strong[talwar];, #strong[andrews];, #strong[logistic];, #strong[ols]; et les handles de fonction.


== Exemple

``````matlab
x = (1:10)';
y = 10 - 2*x + randn(10,1);
[b, stats] = robustfit(x, y)
``````


== Voir aussi

#nlink(<statistics:5_regression.regress>)[regress];, #nlink(<statistics:1_descriptive_statistics_visualization.corr>)[corr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
