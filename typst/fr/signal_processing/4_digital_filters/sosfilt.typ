#import "../nelson_help.typ": *

= sosfilt <signal_processing:4_digital_filters.sosfilt>

Filtre des donnees avec des sections du second ordre.

== Syntaxe

- #raw("Y = sosfilt(SOS, X)");
- #raw("Y = sosfilt(SOS, X, DIM)");

== Argument d'entrée

/ SOS: matrice de sections du second ordre.
/ X: donnees d'entree.
/ DIM: dimension sur laquelle appliquer le filtre.

== Argument de sortie

/ Y: donnees filtrees.

== Description

#strong[sosfilt]; applique chaque ligne de SOS comme une section de filtre.


== Exemple

``````matlab

y = sosfilt([1 2 1 1 -0.5 0], [1 0 0 0]);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.sos2tf>)[sos2tf];, #nlink(<elementary_functions:7_indexing_dimensions.filter>)[filter];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
