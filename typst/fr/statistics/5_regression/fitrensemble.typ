#import "../nelson_help.typ": *

= fitrensemble <statistics:5_regression.fitrensemble>

Ajuste un modele de regression d'ensemble.

== Syntaxe

- #raw("mdl = fitrensemble(X, Y)");
- #raw("mdl = fitrensemble(X, Y, Name, Value)");
- #raw("yfit = predict(mdl, Xnew)");

== Description

#strong[fitrensemble]; cree un objet #strong[RegressionEnsemble]; a partir de predicteurs numeriques #strong[X]; et de la reponse numerique #strong[Y];.

 L'implementation actuelle prend en charge les ensembles #strong[Bag]; et #strong[LSBoost]; d'apprenants arbre. Les arguments nom-valeur incluent #strong[Method];, #strong[Learners];, #strong[NumLearningCycles];, #strong[LearnRate];, #strong[MaxNumSplits];, #strong[MinLeafSize];, #strong[MinParentSize];, #strong[PredictorNames]; et #strong[ResponseName];.


== Exemple

``````matlab
X = [0; 1; 2; 3; 4; 5];
Y = [1; 1.2; 3; 3.2; 9; 9.1];
mdl = fitrensemble(X, Y, 'NumLearningCycles', 5);
yfit = predict(mdl, [1.5; 4.5])
``````


== Voir aussi

#nlink(<statistics:5_regression.fitrtree>)[fitrtree];, #nlink(<statistics:5_regression.fitrknn>)[fitrknn];, #nlink(<statistics:5_regression.fitrsvm>)[fitrsvm];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
