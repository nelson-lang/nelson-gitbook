#import "../nelson_help.typ": *

= square <signal_processing:1_signal_generation_preprocessing.square>

Signal carré.

== Syntaxe

- #raw("Y = square(T)");
- #raw("Y = square(T, duty)");

== Argument d'entrée

/ T: valeurs de temps en radians.
/ duty: rapport cyclique en pourcentage.

== Argument de sortie

/ Y: valeurs du signal.

== Description

#strong[square]; génère un signal périodique à deux niveaux.


== Exemple

``````matlab

y = square(0:0.1:2*pi, 25);

``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.sawtooth>)[sawtooth];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
