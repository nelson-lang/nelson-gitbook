#import "../nelson_help.typ": *

= medfilt1 <signal_processing:1_signal_generation_preprocessing.medfilt1>

Filtre median unidimensionnel.

== Syntaxe

- #raw("Y = medfilt1(X)");
- #raw("Y = medfilt1(X, N)");
- #raw("Y = medfilt1(X, N, [], DIM)");
- #raw("Y = medfilt1(..., NANFLAG, PADDING)");

== Argument d'entrée

/ X: signal d'entree.
/ N: longueur de fenetre.
/ DIM: dimension sur laquelle appliquer le filtre.
/ NANFLAG: "includenan" ou "omitnan".
/ PADDING: "zeropad" ou "truncate".

== Argument de sortie

/ Y: signal filtre par mediane.

== Description

#strong[medfilt1]; remplace chaque echantillon par une mediane locale.


== Exemple

``````matlab

y = medfilt1([1 9 2 3 4], 3);

``````


== Voir aussi

#nlink(<signal_processing:1_signal_generation_preprocessing.hampel>)[hampel];, #nlink(<signal_processing:1_signal_generation_preprocessing.sgolayfilt>)[sgolayfilt];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
