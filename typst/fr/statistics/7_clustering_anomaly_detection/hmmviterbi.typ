#import "../nelson_help.typ": *

= hmmviterbi <statistics:7_clustering_anomaly_detection.hmmviterbi>

Chemin d'etats le plus probable pour un modele de Markov cache discret.

== Syntaxe

- #raw("states = hmmviterbi(seq, trans, emis)");
- #raw("[states, logp] = hmmviterbi(seq, trans, emis)");

== Description

#strong[hmmviterbi]; calcule le chemin d'etats caches le plus probable pour une sequence de symboles.


== Exemple

``````matlab
states = hmmviterbi([1 2 3 2 1], [0.7 0.3; 0.4 0.6], [0.5 0.4 0.1; 0.1 0.3 0.6])
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.hmmdecode>)[hmmdecode];, #nlink(<statistics:7_clustering_anomaly_detection.hmmgenerate>)[hmmgenerate];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
