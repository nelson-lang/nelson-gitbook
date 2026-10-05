#import "../nelson_help.typ": *

= hmmgenerate <statistics:7_clustering_anomaly_detection.hmmgenerate>

Genere une sequence de Markov cachee discrete.

== Syntaxe

- #raw("[seq, states] = hmmgenerate(len, trans, emis)");

== Description

#strong[hmmgenerate]; genere des symboles et des etats a partir de matrices de transition et d'emission.


== Exemple

``````matlab
trans = [0.7 0.3; 0.4 0.6];
emis = [0.5 0.4 0.1; 0.1 0.3 0.6];
[seq, states] = hmmgenerate(10, trans, emis)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.hmmdecode>)[hmmdecode];, #nlink(<statistics:7_clustering_anomaly_detection.hmmviterbi>)[hmmviterbi];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
