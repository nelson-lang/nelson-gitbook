#import "../nelson_help.typ": *

= rectwin <signal_processing:5_spectral_analysis.rectwin>

Fenêtre rectangulaire.

== Syntaxe

- #raw("W = rectwin(M)");

== Argument d'entrée

/ M: longueur de la fenêtre.

== Argument de sortie

/ W: vecteur colonne contenant la fenêtre.

== Description

#strong[rectwin]; retourne une fenêtre rectangulaire de M points.


== Exemple

``````matlab

w = rectwin(4);

``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.hann>)[hann];, #nlink(<signal_processing:5_spectral_analysis.hamming>)[hamming];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
