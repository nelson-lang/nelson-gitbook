#import "nelson_help.typ": *

= evaluate <optimization:evaluate>

Évaluer une expression d'optimization.

== Syntaxe

- #raw("value = evaluate(expr, values)");

== Argument d'entrée

/ expr: expression ou variable d'optimization.
/ values: structure contenant les valeurs des variables.

== Argument de sortie

/ value: valeur numérique évaluée.

== Description

#strong[evaluate]; calcule la valeur numérique d'une expression problem-based pour une affectation donnée des variables.


== Fonction(s) utilisée(s)

optimexpr optimvar

== Bibliographie

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Exemple

``````matlab
x = optimvar('x');
expr = (x - 4)^2;
value = evaluate(expr, struct('x', 3))

``````


== Voir aussi

#nlink(<optimization:optimexpr>)[optimexpr];, #nlink(<optimization:show>)[show];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
