#import "../nelson_help.typ": *

= hmmdecode <statistics:7_clustering_anomaly_detection.hmmdecode>

Probabilites posterieures des etats d'un modele de Markov cache discret.

== Syntaxe

- #raw("pstates = hmmdecode(seq, trans, emis)");
- #raw("[pstates, logpseq] = hmmdecode(seq, trans, emis)");

== Description

#strong[hmmdecode]; utilise un passage forward-backward mis a l'echelle pour calculer les probabilites posterieures des etats et la log-vraisemblance de la sequence.


== Exemple

``````matlab
seq = [1 2 3 2 1];
trans = [0.7 0.3; 0.4 0.6];
emis = [0.5 0.4 0.1; 0.1 0.3 0.6];
[pstates, logpseq] = hmmdecode(seq, trans, emis)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.hmmviterbi>)[hmmviterbi];, #nlink(<statistics:7_clustering_anomaly_detection.hmmtrain>)[hmmtrain];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
