#import "../nelson_help.typ": *

= triang <signal_processing:5_spectral_analysis.triang>

Fenêtre triangulaire.

== Syntaxe

- #raw("W = triang(M)");

== Argument d'entrée

/ M: longueur de la fenêtre.

== Argument de sortie

/ W: vecteur colonne contenant la fenêtre.

== Description

#strong[triang]; retourne une fenêtre triangulaire de M points.


== Exemple

``````matlab

w = triang(6);

``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.bartlett>)[bartlett];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
