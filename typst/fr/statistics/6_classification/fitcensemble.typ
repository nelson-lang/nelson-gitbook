#import "../nelson_help.typ": *

= fitcensemble <statistics:6_classification.fitcensemble>

Ajuste un classifieur d'ensemble.

== Syntaxe

- #raw("mdl = fitcensemble(X, Y)");
- #raw("mdl = fitcensemble(X, Y, Name, Value)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score] = predict(mdl, Xnew)");

== Description

#strong[fitcensemble]; cree un objet #strong[ClassificationEnsemble]; a partir de predicteurs numeriques #strong[X]; et d'etiquettes de classes #strong[Y];.

 L'implementation actuelle prend en charge les ensembles #strong[Bag]; d'apprenants arbre. Les arguments nom-valeur incluent #strong[ClassNames];, #strong[Method];, #strong[Learners];, #strong[NumLearningCycles];, #strong[MaxNumSplits];, #strong[MinLeafSize]; et #strong[MinParentSize];.


== Exemple

``````matlab
X = [0 0; 0 1; 5 5; 5 6; 10 0; 10 1];
Y = [1; 1; 2; 2; 3; 3];
mdl = fitcensemble(X, Y, 'NumLearningCycles', 5);
[label, score] = predict(mdl, [0.2 0.2; 5.2 5.2; 10.2 0.2])
``````


== Voir aussi

#nlink(<statistics:6_classification.fitctree>)[fitctree];, #nlink(<statistics:6_classification.fitcecoc>)[fitcecoc];, #nlink(<statistics:6_classification.fitcknn>)[fitcknn];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
