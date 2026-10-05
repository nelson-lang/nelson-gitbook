#import "../nelson_help.typ": *

= rectpuls <signal_processing:1_signal_generation_preprocessing.rectpuls>

Impulsion rectangulaire échantillonnée.

== Syntaxe

- #raw("Y = rectpuls(T)");
- #raw("Y = rectpuls(T, width)");

== Argument d'entrée

/ T: positions d'échantillonnage.
/ width: largeur de l'impulsion.

== Argument de sortie

/ Y: échantillons de l'impulsion.

== Description

#strong[rectpuls]; retourne un dans l'intervalle de l'impulsion et zéro ailleurs.


== Exemple

``````matlab

y = rectpuls([-0.5 0 0.5], 1);

``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.tripuls>)[tripuls];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
