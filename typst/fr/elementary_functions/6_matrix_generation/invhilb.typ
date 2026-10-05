#import "../nelson_help.typ": *

= invhilb <elementary_functions:6_matrix_generation.invhilb>

Inverse d'une matrice de Hilbert

== Syntaxe

- #raw("h = hilb(n)");
- #raw("h = hilb(n, className)");

== Argument d'entrée

/ n: un scalaire, entier non négatif.
/ className: 'single' or 'double' (default).

== Argument de sortie

/ h: matrice de Hilbert.

== Description

#strong[hilb]; calcule la matrice de Hilbert.


== Bibliographie

https:\/\/en.wikipedia.org\/wiki\/David\_Hilbert, and Thanks to https:\/\/nhigham.com\/2020\/06\/30\/what-is-the-hilbert-matrix\/

== Exemple

``````matlab
h = hilb(5)
``````


== Voir aussi

#nlink(<elementary_functions:6_matrix_generation.invhilb>)[invhilb];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
