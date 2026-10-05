#import "../nelson_help.typ": *

= isstable <signal_processing:4_digital_filters.isstable>

Détermine si un filtre numérique est stable.

== Syntaxe

- #raw("tf = isstable(B, A)");
- #raw("tf = isstable(SOS)");

== Argument d'entrée

/ B, A: coefficients de fonction de transfert.
/ SOS: matrice de sections du second ordre.

== Argument de sortie

/ tf: true si tous les pôles sont dans le cercle unité.

== Description

#strong[isstable]; vérifie les rayons des pôles d'un filtre numérique.


== Exemple

``````matlab

tf = isstable([1], [1 -0.5]);

``````


== Voir aussi

#nlink(<signal_processing:4_digital_filters.tf2zp>)[tf2zp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
