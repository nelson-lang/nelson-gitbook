#import "../nelson_help.typ": *

= hmmestimate <statistics:7_clustering_anomaly_detection.hmmestimate>

Estimate discrete hidden Markov probabilities from known states.

== Syntax

- #raw("[trans, emis] = hmmestimate(seq, states)");
- #raw("[trans, emis] = hmmestimate(seq, states, Name, Value)");

== Description

#strong[hmmestimate]; estimates transition and emission probability matrices from a symbol sequence and known state path.

Name-value arguments include NStates, NSymbols, PseudoTransitions, and PseudoEmissions.


== Example

``````matlab
seq = [1 2 3 2 1];
states = [1 1 2 2 1];
[trans, emis] = hmmestimate(seq, states)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.hmmtrain>)[hmmtrain];, #nlink(<statistics:7_clustering_anomaly_detection.hmmgenerate>)[hmmgenerate];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
