#import "../nelson_help.typ": *

= append <control_system:2_model_conversion_interconnection.append>

Ajoute les entrées et sorties des deux modèles.

== Syntaxe

- #raw("sys = append(sys1, sys2, ..., sysN)");

== Argument d'entrée

/ sys1, sys2, ..., sysN: Modèles LTI.

== Argument de sortie

/ sys: Modèle LTI.

== Description

#strong[sys \= append(sys1, sys2, ..., sysN)]; combine les entrées et sorties des modèles #strong[sys1]; à #strong[sysN];, créant un modèle augmenté représenté par #strong[sys];.


== Exemple

``````matlab
sys1 = tf(1,[1 0]);
sys2 = tf([1 -1], [4 2]);
sys = append(sys1, 10, sys2)

``````


== Voir aussi

#nlink(<control_system:2_model_conversion_interconnection.feedback>)[feedback];, #nlink(<control_system:2_model_conversion_interconnection.series>)[series];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
