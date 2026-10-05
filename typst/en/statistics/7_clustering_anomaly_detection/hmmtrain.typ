#import "../nelson_help.typ": *

= hmmtrain <statistics:7_clustering_anomaly_detection.hmmtrain>

Train a discrete hidden Markov model.

== Syntax

- #raw("[trans, emis] = hmmtrain(seq, trans0, emis0)");
- #raw("[trans, emis] = hmmtrain(seq, trans0, emis0, Name, Value)");

== Description

#strong[hmmtrain]; refines transition and emission probability matrices for a symbol sequence using Baum-Welch iterations.

Name-value arguments include MaxIterations, Tolerance, Verbose, PseudoTransitions, and PseudoEmissions.


== Example

``````matlab
seq = [1 2 3 2 1];
trans0 = [0.7 0.3; 0.4 0.6];
emis0 = [0.5 0.4 0.1; 0.1 0.3 0.6];
[trans, emis] = hmmtrain(seq, trans0, emis0)
``````


== See also

#nlink(<statistics:7_clustering_anomaly_detection.hmmestimate>)[hmmestimate];, #nlink(<statistics:7_clustering_anomaly_detection.hmmdecode>)[hmmdecode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
