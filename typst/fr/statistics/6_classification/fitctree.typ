#import "../nelson_help.typ": *

= fitctree <statistics:6_classification.fitctree>

Ajuste un arbre de decision de classification.

== Syntaxe

- #raw("mdl = fitctree(X, Y)");
- #raw("mdl = fitctree(X, Y, Name, Value)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score, cost, node] = predict(mdl, Xnew)");

== Description

#strong[fitctree]; cree un objet #strong[ClassificationTree]; a partir des predicteurs numeriques #strong[X]; et des etiquettes de classe #strong[Y];.

 Les arguments nom-valeur incluent #strong[ClassNames];, #strong[Prior];, #strong[SplitCriterion];, #strong[MaxNumSplits];, #strong[MinLeafSize]; et #strong[MinParentSize];. Les predicteurs numeriques sont separes par tests binaires de seuil. La prediction retourne les scores de classe des feuilles.


== Exemple

``````matlab
X = [0 0; 0 1; 1 0; 1 1; 5 5; 5 6; 6 5; 6 6];
Y = [1; 1; 1; 1; 2; 2; 2; 2];
mdl = fitctree(X, Y);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
``````


== Voir aussi

#nlink(<statistics:6_classification.fitcknn>)[fitcknn];, #nlink(<statistics:6_classification.fitcnb>)[fitcnb];, #nlink(<statistics:6_classification.fitcdiscr>)[fitcdiscr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
