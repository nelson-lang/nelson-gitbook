#import "../nelson_help.typ": *

= peak2peak <signal_processing:2_measurements_feature_extraction.peak2peak>

Ecart entre maximum et minimum.

== Syntaxe

- #raw("Y = peak2peak(X)");
- #raw("Y = peak2peak(X, \"all\")");
- #raw("Y = peak2peak(X, DIM)");
- #raw("Y = peak2peak(X, VECDIM)");

== Argument d'entrée

/ X: donnees d'entree.
/ DIM: dimension sur laquelle calculer l'ecart.
/ VECDIM: vecteur de dimensions sur lesquelles calculer l'ecart.

== Argument de sortie

/ Y: valeur crete-a-crete.

== Description

#strong[peak2peak]; calcule max(X) - min(X).


== Exemple

``````matlab

y = peak2peak([1 4 -2]);

``````


== Voir aussi

#nlink(<signal_processing:2_measurements_feature_extraction.rms>)[rms];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
