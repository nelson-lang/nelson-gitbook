#import "../nelson_help.typ": *

= kaiser <signal_processing:5_spectral_analysis.kaiser>

Fenêtre de Kaiser.

== Syntaxe

- #raw("W = kaiser(M)");
- #raw("W = kaiser(M, beta)");

== Argument d'entrée

/ M: longueur de la fenêtre.
/ beta: paramètre de forme.

== Argument de sortie

/ W: vecteur colonne contenant la fenêtre.

== Description

#strong[kaiser]; retourne une fenêtre de Kaiser de M points.


== Exemple

``````matlab

w = kaiser(5, 2);

``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.kaiserord>)[kaiserord];, #nlink(<signal_processing:4_digital_filters.fir1>)[fir1];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
