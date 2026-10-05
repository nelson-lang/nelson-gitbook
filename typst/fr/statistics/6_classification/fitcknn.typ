#import "../nelson_help.typ": *

= fitcknn <statistics:6_classification.fitcknn>

Ajuste un classifieur par k plus proches voisins.

== Syntaxe

- #raw("mdl = fitcknn(X, Y)");
- #raw("mdl = fitcknn(X, Y, Name, Value)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score, cost] = predict(mdl, Xnew)");

== Description

#strong[fitcknn]; cree un objet #strong[ClassificationKNN]; a partir des predicteurs numeriques #strong[X]; et des etiquettes de classe #strong[Y];.

 Les arguments nom-valeur incluent #strong[NumNeighbors];, #strong[Distance];, #strong[DistanceWeight];, #strong[Standardize];, #strong[P];, #strong[Scale]; et #strong[ClassNames];. La prediction utilise la recherche native des plus proches voisins et retourne des scores de classe normalises.


== Exemple

``````matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1; 1; 2; 2; 2];
mdl = fitcknn(X, Y, 'NumNeighbors', 3);
[label, score] = predict(mdl, [0.2 0.1; 5.2 5.1])
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.knnsearch>)[knnsearch];, #nlink(<statistics:7_clustering_anomaly_detection.fitgmdist>)[fitgmdist];, #nlink(<statistics:6_classification.grp2idx>)[grp2idx];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
