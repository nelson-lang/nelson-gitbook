#import "nelson_help.typ": *

= optim.problemdef.OptimizationVariable <optimization:optim.problemdef.OptimizationVariable>

Variable pour expressions d'optimisation.

== Syntaxe

- #raw("x = optimvar(name)");
- #raw("x = optimvar(name, n, m, Name, Value)");

== Argument d'entrée

/ name: nom de variable utilise dans les expressions generees et les structures de solution.
/ n, m: dimensions optionnelles pour les variables vectorielles ou matricielles.
/ Name, Value: proprietes de variable comme LowerBound, UpperBound et Type.

== Argument de sortie

/ x: objet variable d'optimisation.

== Description

optim.problemdef.OptimizationVariable represente des variables scalaires ou tableaux utilisees pour construire des expressions d'optimisation.

 Creez des variables avec optimvar, puis combinez-les dans des objectifs et des contraintes.


== Fonction(s) utilisée(s)

optimvar

== Exemple

Creer une variable a deux elements et l'utiliser dans une expression.

``````matlab
x = optimvar('x', 2, 1, 'LowerBound', 0);
expr = (x(1) - 1)^2 + (x(2) - 2)^2
``````


== Voir aussi

#nlink(<optimization:optimvar>)[optimvar];, #nlink(<optimization:optimexpr>)[optimexpr];, #nlink(<optimization:optimproblem>)[optimproblem];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
