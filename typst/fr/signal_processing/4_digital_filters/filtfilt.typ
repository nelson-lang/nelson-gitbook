#import "../nelson_help.typ": *

= filtfilt <signal_processing:4_digital_filters.filtfilt>

Filtrage numÃ©rique aller-retour.

== Syntaxe

- #raw("Y = filtfilt(B, A, X)");

== Argument d'entrée

/ B, A: coefficients du filtre.
/ X: signal d'entrÃ©e.

== Argument de sortie

/ Y: signal filtrÃ©.

== Description

#strong[filtfilt]; filtre vers l'avant, inverse le rÃ©sultat, filtre Ã  nouveau, puis rÃ©inverse.


== Exemple

``````matlab

y = filtfilt([1 1] / 2, 1, [1 2 3 4]);

``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.filter>)[filter];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
