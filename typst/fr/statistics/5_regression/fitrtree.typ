#import "../nelson_help.typ": *

= fitrtree <statistics:5_regression.fitrtree>

Ajuste un arbre de regression.

== Syntaxe

- #raw("mdl = fitrtree(X, Y)");
- #raw("mdl = fitrtree(X, Y, Name, Value)");
- #raw("yfit = predict(mdl, Xnew)");
- #raw("[yfit, node] = predict(mdl, Xnew)");

== Description

#strong[fitrtree]; cree un objet #strong[RegressionTree]; a partir des predicteurs numeriques #strong[X]; et de la reponse numerique #strong[Y];.

 Les arguments nom-valeur incluent #strong[MaxNumSplits];, #strong[MinLeafSize];, #strong[MinParentSize];, #strong[PredictorNames]; et #strong[ResponseName];. Les predicteurs numeriques sont separes par des tests binaires de seuil qui reduisent l'erreur quadratique.


== Exemple

``````matlab
X = [0; 1; 2; 3; 4; 5];
Y = [1; 1.2; 3; 3.2; 9; 9.1];
mdl = fitrtree(X, Y, 'MaxNumSplits', 2);
yfit = predict(mdl, [1.5; 4.5])
``````


== Voir aussi

#nlink(<statistics:6_classification.fitctree>)[fitctree];, #nlink(<statistics:5_regression.fitlm>)[fitlm];, #nlink(<statistics:5_regression.fitglm>)[fitglm];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
