#import "../nelson_help.typ": *

= fitrsvm <statistics:5_regression.fitrsvm>

Ajuste un modele de regression par machine a vecteurs de support.

== Syntaxe

- #raw("mdl = fitrsvm(X, Y)");
- #raw("mdl = fitrsvm(X, Y, Name, Value)");
- #raw("yfit = predict(mdl, Xnew)");

== Description

#strong[fitrsvm]; cree un objet #strong[RegressionSVM]; a partir de predicteurs numeriques #strong[X]; et de la reponse numerique #strong[Y];.

 Les arguments nom-valeur incluent #strong[KernelFunction];, #strong[KernelScale];, #strong[PolynomialOrder];, #strong[BoxConstraint];, #strong[Epsilon];, #strong[Standardize];, #strong[PredictorNames]; et #strong[ResponseName];. Les noyaux pris en charge sont #strong[linear];, #strong[gaussian];, #strong[rbf]; et #strong[polynomial];.


== Exemple

``````matlab
X = [0; 1; 2; 3; 4; 5];
Y = [1; 1.2; 3; 3.2; 9; 9.1];
mdl = fitrsvm(X, Y, 'KernelFunction', 'gaussian');
yfit = predict(mdl, [1.5; 4.5])
``````


== Voir aussi

#nlink(<statistics:6_classification.fitcsvm>)[fitcsvm];, #nlink(<statistics:5_regression.fitrknn>)[fitrknn];, #nlink(<statistics:5_regression.fitrtree>)[fitrtree];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
