#import "../nelson_help.typ": *

= imag <elementary_functions:3_complex_numbers.imag>

Partie imaginaire d'un nombre complexe.

== Syntaxe

- #raw("im = imag(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ R: partie imaginaire des éléments du tableau complexe M.

== Description

#strong[R \= imag(M)]; Renvoie la partie imaginaire de M.


== Exemple

``````matlab
cplx = 22+34*i;
r = imag(cplx)
``````


== Voir aussi

#nlink(<elementary_functions:3_complex_numbers.real>)[real];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
