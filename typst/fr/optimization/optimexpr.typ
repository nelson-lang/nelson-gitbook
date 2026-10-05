#import "nelson_help.typ": *

= optimexpr <optimization:optimexpr>

Créer une expression d'optimization.

== Syntaxe

- #raw("expr = optimexpr()");
- #raw("expr = optimexpr(value)");

== Argument d'entrée

/ value: valeur numérique ou expression de départ.

== Argument de sortie

/ expr: objet expression d'optimization.

== Description

#strong[optimexpr]; crée un objet expression combinable avec des variables d'optimization par les opérateurs arithmétiques.


== Fonction(s) utilisée(s)

optimvar evaluate

== Bibliographie

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Exemple

``````matlab
x = optimvar('x');
expr = optimexpr(3) + x^2;
value = evaluate(expr, struct('x', 2))

``````


== Voir aussi

#nlink(<optimization:evaluate>)[evaluate];, #nlink(<optimization:optimconstr>)[optimconstr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
