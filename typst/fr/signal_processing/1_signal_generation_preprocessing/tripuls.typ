#import "../nelson_help.typ": *

= tripuls <signal_processing:1_signal_generation_preprocessing.tripuls>

Impulsion triangulaire échantillonnée.

== Syntaxe

- #raw("Y = tripuls(T)");
- #raw("Y = tripuls(T, width)");
- #raw("Y = tripuls(T, width, skew)");

== Argument d'entrée

/ T: positions d'échantillonnage.
/ width: largeur de l'impulsion.
/ skew: paramètre de position du sommet.

== Argument de sortie

/ Y: échantillons de l'impulsion.

== Description

#strong[tripuls]; retourne une impulsion triangulaire avec inclinaison optionnelle.


== Exemple

``````matlab

y = tripuls([-0.5 0 0.5], 1);

``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.rectpuls>)[rectpuls];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
