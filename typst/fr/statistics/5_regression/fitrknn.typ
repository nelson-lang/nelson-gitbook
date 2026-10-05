#import "../nelson_help.typ": *

= fitrknn <statistics:5_regression.fitrknn>

Ajuste un modele de regression par k plus proches voisins.

== Syntaxe

- #raw("mdl = fitrknn(X, Y)");
- #raw("mdl = fitrknn(X, Y, Name, Value)");
- #raw("yfit = predict(mdl, Xnew)");
- #raw("[yfit, D] = predict(mdl, Xnew)");

== Description

#strong[fitrknn]; cree un objet #strong[RegressionKNN]; a partir des predicteurs numeriques #strong[X]; et de la reponse numerique #strong[Y];.

 Les arguments nom-valeur incluent #strong[NumNeighbors];, #strong[Distance];, #strong[DistanceWeight];, #strong[Standardize];, #strong[P];, #strong[Scale];, #strong[PredictorNames]; et #strong[ResponseName];. La prediction retourne les moyennes ponderees des reponses voisines.


== Exemple

``````matlab
X = [0 0; 0 1; 1 0; 5 5; 5 6; 6 5];
Y = [1; 1.2; 1.1; 10; 10.2; 10.1];
mdl = fitrknn(X, Y, 'NumNeighbors', 3);
yfit = predict(mdl, [0.2 0.1; 5.2 5.1])
``````


== Voir aussi

#nlink(<statistics:6_classification.fitcknn>)[fitcknn];, #nlink(<statistics:5_regression.fitrtree>)[fitrtree];, #nlink(<statistics:7_clustering_anomaly_detection.knnsearch>)[knnsearch];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
