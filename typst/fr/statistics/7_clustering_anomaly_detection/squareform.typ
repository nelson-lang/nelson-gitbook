#import "../nelson_help.typ": *

= squareform <statistics:7_clustering_anomaly_detection.squareform>

Convertir entre vecteur de distances condense et matrice carree de distances.

== Syntaxe

- #raw("Z = squareform(D)");
- #raw("D = squareform(Z)");
- #raw("Y = squareform(X, direction)");

== Argument d'entrée

/ D: vecteur de distances avec n\*(n-1)\/2 elements.
/ Z: matrice de distances carree et symetrique.
/ direction: 'tomatrix' ou 'tovector'.

== Description

#strong[squareform]; convertit un vecteur de distances condense en matrice symetrique carree, ou l'inverse.


== Exemple

``````matlab
D = [1 2 3];
Z = squareform(D)
D2 = squareform(Z)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.pdist>)[pdist];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
