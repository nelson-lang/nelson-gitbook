#import "../nelson_help.typ": *

= chirp <signal_processing:1_signal_generation_preprocessing.chirp>

Signal cosinus a frequence balayee.

== Syntaxe

- #raw("Y = chirp(T)");
- #raw("Y = chirp(T, F0, T1, F1)");
- #raw("Y = chirp(T, F0, T1, F1, method)");
- #raw("Y = chirp(T, F0, T1, F1, method, phi)");

== Argument d'entrée

/ T: valeurs de temps.
/ F0: frequence initiale.
/ T1: temps de reference.
/ F1: frequence a T1.
/ method: 'linear', 'quadratic' ou 'logarithmic'.
/ phi: phase initiale en degres.

== Argument de sortie

/ Y: signal genere.

== Description

#strong[chirp]; genere un cosinus dont la frequence varie dans le temps.


== Exemple

``````matlab

y = chirp(0:0.01:1, 0, 1, 10);

``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.sawtooth>)[sawtooth];, #nlink(<signal_processing:1_signal_generation_preprocessing.square>)[square];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
