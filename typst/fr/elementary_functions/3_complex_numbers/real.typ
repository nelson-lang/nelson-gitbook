#import "../nelson_help.typ": *

= real <elementary_functions:3_complex_numbers.real>

Partie réelle d'un nombre complexe.

== Syntaxe

- #raw("R = real(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ R: partie réelle des éléments du tableau complexe M.

== Description

#strong[R \= real(M)]; renvoie la partie réelle de M.


== Exemple

``````matlab
cplx = 22+34*i;
r = real(cplx)
``````


== Voir aussi

#nlink(<elementary_functions:3_complex_numbers.imag>)[imag];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
