#import "../nelson_help.typ": *

= complex <elementary_functions:3_complex_numbers.complex>

Crée un nombre complexe.

== Syntaxe

- #raw("cpx = complex(a)");
- #raw("cpx = complex(a, b)");

== Argument d'entrée

/ a: une variable : partie réelle
/ b: une variable : partie imaginaire

== Argument de sortie

/ cplx: résultat de a + b\*i

== Description

#strong[complex]; renvoie une valeur complexe à partir d'arguments réels.

 Avec un seul argument d'entrée,#strong[complex]; renvoie la valeur complexe a + 0\*i.


== Exemple

``````matlab
z = complex(3, 2)
z2 = complex(Inf, Inf)
z3 = Inf + Inf * i
``````


== Voir aussi

#nlink(<elementary_functions:3_complex_numbers.real>)[real];, #nlink(<elementary_functions:3_complex_numbers.imag>)[imag];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
