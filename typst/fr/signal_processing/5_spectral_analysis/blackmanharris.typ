#import "../nelson_help.typ": *

= blackmanharris <signal_processing:5_spectral_analysis.blackmanharris>

Fenêtre de Blackman-Harris.

== Syntaxe

- #raw("W = blackmanharris(M)");
- #raw("W = blackmanharris(M, option)");

== Argument d'entrée

/ M: longueur de la fenêtre.
/ option: 'symmetric' ou 'periodic'.

== Argument de sortie

/ W: vecteur colonne contenant la fenêtre.

== Description

#strong[blackmanharris]; retourne une fenêtre de Blackman-Harris à quatre termes.


== Exemple

``````matlab

w = blackmanharris(5);

``````


== Voir aussi

#nlink(<signal_processing:5_spectral_analysis.blackman>)[blackman];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
