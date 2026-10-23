#import "../nelson_help.typ": *

= KDTreeSearcher <statistics:7_clustering_anomaly_detection.KDTreeSearcher>

Objet de recherche de plus proches voisins.

== Syntaxe

- #raw("Mdl = KDTreeSearcher(X)");
- #raw("Mdl = KDTreeSearcher(X, Name, Value)");
- #raw("[idx, D] = knnsearch(Mdl, Y, Name, Value)");
- #raw("[idx, D] = rangesearch(Mdl, Y, radius, Name, Value)");

== Argument d'entrée

/ X: les données à interroger, sous la forme d'une matrice numérique réelle avec un point par ligne.
/ Name, Value: options : #strong[Distance]; (défaut #strong['euclidean'];), #strong[P]; (exposant de Minkowski) et #strong[BucketSize];.

== Argument de sortie

/ Mdl: un objet KDTreeSearcher contenant les données et les options de recherche.

== Description

#strong[KDTreeSearcher]; stocke un ensemble de points et la métrique de distance utilisée pour les interroger, afin que les recherches de plus proches voisins puissent être exécutées sur les mêmes données avec #strong[knnsearch]; et #strong[rangesearch];. L'objet expose les propriétés #strong[X];, #strong[Distance];, #strong[DistParameter]; et #strong[BucketSize];.

 Les recherches sont déléguées aux fonctions #strong[knnsearch]; et #strong[rangesearch];, en transmettant la métrique de distance stockée dans l'objet.


== Exemple

``````matlab
X = [0 0; 1 0; 0 2; 4 4];
Mdl = KDTreeSearcher(X);
[idx, D] = knnsearch(Mdl, [0 1; 3 4], 'K', 2)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.knnsearch>)[knnsearch];, #nlink(<statistics:7_clustering_anomaly_detection.rangesearch>)[rangesearch];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
