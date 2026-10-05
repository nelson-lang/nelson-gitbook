#import "../nelson_help.typ": *

= gausswin <signal_processing:5_spectral_analysis.gausswin>

Fenêtre gaussienne.

== Syntaxe

- #raw("W = gausswin(M)");
- #raw("W = gausswin(M, alpha)");

== Argument d'entrée

/ M: longueur de la fenêtre.
/ alpha: paramètre de forme.

== Argument de sortie

/ W: vecteur colonne contenant la fenêtre.

== Description

#strong[gausswin]; retourne une fenêtre gaussienne de M points.


== Exemple

``````matlab

w = gausswin(5, 2.5);

``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.kaiser>)[kaiser];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
