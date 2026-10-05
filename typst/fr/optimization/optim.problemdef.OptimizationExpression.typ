#import "nelson_help.typ": *

= optim.problemdef.OptimizationExpression <optimization:optim.problemdef.OptimizationExpression>

Expression d'optimisation.

== Syntaxe

- #raw("expr = optimexpr(...)");
- #raw("expr = fcn2optimexpr(f, ...)");

== Argument d'entrée

/ value: valeur numerique, variable d'optimisation ou expression utilisee pour creer une expression.
/ dimensions: dimensions utilisees pour creer un tableau d'expressions nulles.

== Argument de sortie

/ expr: objet expression d'optimisation.

== Description

optim.problemdef.OptimizationExpression represente des expressions arithmetiques construites a partir de variables d'optimisation.

 Les expressions peuvent servir d'objectifs ou de parties de contraintes dans un modele problem-based.


== Fonction(s) utilisée(s)

optimexpr optimvar

== Exemple

Creer une expression scalaire a partir de variables d'optimisation.

``````matlab
x = optimvar('x', 2, 1);
expr = (x(1) - 1)^2 + (x(2) - 2)^2
``````


== Voir aussi

#nlink(<optimization:optimexpr>)[optimexpr];, #nlink(<optimization:fcn2optimexpr>)[fcn2optimexpr];, #nlink(<optimization:optimvar>)[optimvar];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
