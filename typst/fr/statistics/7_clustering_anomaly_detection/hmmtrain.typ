#import "../nelson_help.typ": *

= hmmtrain <statistics:7_clustering_anomaly_detection.hmmtrain>

Entraine un modele de Markov cache discret.

== Syntaxe

- #raw("[trans, emis] = hmmtrain(seq, trans0, emis0)");
- #raw("[trans, emis] = hmmtrain(seq, trans0, emis0, Name, Value)");

== Description

#strong[hmmtrain]; affine les matrices de transition et d'emission pour une sequence de symboles avec des iterations Baum-Welch.

Les arguments nom-valeur incluent MaxIterations, Tolerance, Verbose, PseudoTransitions et PseudoEmissions.


== Exemple

``````matlab
seq = [1 2 3 2 1];
trans0 = [0.7 0.3; 0.4 0.6];
emis0 = [0.5 0.4 0.1; 0.1 0.3 0.6];
[trans, emis] = hmmtrain(seq, trans0, emis0)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.hmmestimate>)[hmmestimate];, #nlink(<statistics:7_clustering_anomaly_detection.hmmdecode>)[hmmdecode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
