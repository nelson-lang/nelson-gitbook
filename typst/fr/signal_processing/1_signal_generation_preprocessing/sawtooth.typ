#import "../nelson_help.typ": *

= sawtooth <signal_processing:1_signal_generation_preprocessing.sawtooth>

Signal dent de scie ou triangulaire.

== Syntaxe

- #raw("Y = sawtooth(T)");
- #raw("Y = sawtooth(T, width)");

== Argument d'entrée

/ T: valeurs de temps en radians.
/ width: fraction de période montante.

== Argument de sortie

/ Y: valeurs du signal.

== Description

#strong[sawtooth]; génère une rampe périodique entre -1 et 1.


== Exemple

``````matlab

y = sawtooth(0:0.1:2*pi);

``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.square>)[square];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
