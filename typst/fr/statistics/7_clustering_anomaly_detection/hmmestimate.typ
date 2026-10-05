#import "../nelson_help.typ": *

= hmmestimate <statistics:7_clustering_anomaly_detection.hmmestimate>

Estime les probabilites d'un modele de Markov cache discret avec etats connus.

== Syntaxe

- #raw("[trans, emis] = hmmestimate(seq, states)");
- #raw("[trans, emis] = hmmestimate(seq, states, Name, Value)");

== Description

#strong[hmmestimate]; estime les matrices de transition et d'emission a partir d'une sequence de symboles et d'un chemin d'etats connu.

Les arguments nom-valeur incluent NStates, NSymbols, PseudoTransitions et PseudoEmissions.


== Exemple

``````matlab
seq = [1 2 3 2 1];
states = [1 1 2 2 1];
[trans, emis] = hmmestimate(seq, states)
``````


== Voir aussi

#nlink(<statistics:7_clustering_anomaly_detection.hmmtrain>)[hmmtrain];, #nlink(<statistics:7_clustering_anomaly_detection.hmmgenerate>)[hmmgenerate];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
