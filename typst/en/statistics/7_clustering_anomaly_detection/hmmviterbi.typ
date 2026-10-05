#import "../nelson_help.typ": *

= hmmviterbi <statistics:7_clustering_anomaly_detection.hmmviterbi>

Most likely state path for a discrete hidden Markov model.

== Syntax

- #raw("states = hmmviterbi(seq, trans, emis)");
- #raw("[states, logp] = hmmviterbi(seq, trans, emis)");

== Description

#strong[hmmviterbi]; computes the most likely hidden state path for a symbol sequence.


== Example

``````matlab
states = hmmviterbi([1 2 3 2 1], [0.7 0.3; 0.4 0.6], [0.5 0.4 0.1; 0.1 0.3 0.6])
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.hmmdecode>)[hmmdecode];, #nlink(<statistics:7_clustering_anomaly_detection.hmmgenerate>)[hmmgenerate];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
