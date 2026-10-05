#import "../nelson_help.typ": *

= hmmgenerate <statistics:7_clustering_anomaly_detection.hmmgenerate>

Generate a discrete hidden Markov sequence.

== Syntax

- #raw("[seq, states] = hmmgenerate(len, trans, emis)");

== Description

#strong[hmmgenerate]; generates symbols and states from transition and emission probability matrices.


== Example

``````matlab
trans = [0.7 0.3; 0.4 0.6];
emis = [0.5 0.4 0.1; 0.1 0.3 0.6];
[seq, states] = hmmgenerate(10, trans, emis)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.hmmdecode>)[hmmdecode];, #nlink(<statistics:7_clustering_anomaly_detection.hmmviterbi>)[hmmviterbi];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
