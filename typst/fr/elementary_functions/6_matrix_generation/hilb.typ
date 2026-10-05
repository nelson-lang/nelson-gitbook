#import "../nelson_help.typ": *

= hilb <elementary_functions:6_matrix_generation.hilb>

Matrice de Hilbert

== Syntaxe

- #raw("h = invhilb(n)");
- #raw("h = invhilb(n, className)");

== Argument d'entrée

/ n: un scalaire, entier non négatif.
/ className: 'single' ou 'double' (par défaut).

== Argument de sortie

/ h: Matrice de Hilbert.

== Description

#strong[hilb]; calcule la matrice de Hilbert.


== Bibliographie

https:\/\/en.wikipedia.org\/wiki\/David\_Hilbert, and Thanks to https:\/\/nhigham.com\/2020\/06\/30\/what-is-the-hilbert-matrix\/

== Exemple

``````matlab
h = invhilb(5)
``````


== Voir aussi

#nlink(<elementary_functions:6_matrix_generation.hilb>)[hilb];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
