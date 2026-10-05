#import "nelson_help.typ": *

= optimvar <optimization:optimvar>

Créer des variables d'optimization.

== Syntaxe

- #raw("x = optimvar(name)");
- #raw("x = optimvar(name, n, m, name, value)");

== Argument d'entrée

/ name: nom de la variable.
/ n, m: dimensions de la variable.
/ name, value: propriétés comme LowerBound, UpperBound et Type.

== Argument de sortie

/ x: objet variable d'optimization.

== Description

#strong[optimvar]; crée des variables scalaires ou tableaux utilisées dans les expressions problem-based. Les variables vectorielles peuvent être indexées avec des parenthèses dans les expressions.


== Fonction(s) utilisée(s)

optimproblem optimexpr

== Bibliographie

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Exemple

``````matlab
x = optimvar('x', 2, 1, 'LowerBound', 0);
expr = (x(1) - 1)^2 + (x(2) - 2)^2

``````


== Voir aussi

#nlink(<optimization:optimproblem>)[optimproblem];, #nlink(<optimization:optimexpr>)[optimexpr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
