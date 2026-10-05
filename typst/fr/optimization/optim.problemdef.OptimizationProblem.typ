#import "nelson_help.typ": *

= optim.problemdef.OptimizationProblem <optimization:optim.problemdef.OptimizationProblem>

Objet probleme d'optimisation.

== Syntaxe

- #raw("prob = optimproblem");
- #raw("prob = optimproblem(Name, Value)");
- #raw("[sol, fval] = solve(prob, x0)");

== Argument d'entrée

/ Objective: expression objectif a minimiser ou maximiser.
/ Constraints: structure de contraintes d'optimisation nommees.
/ Name, Value: proprietes du probleme comme Objective, Description et ObjectiveSense.

== Argument de sortie

/ prob: objet probleme d'optimisation.
/ sol: structure solution renvoyee par solve.
/ fval: valeur de l'objectif a la solution.

== Description

optim.problemdef.OptimizationProblem stocke un objectif, des contraintes, des variables, le sens de l'objectif et une description.

 Utilisez optimproblem pour creer l'objet et solve pour calculer une solution.


== Fonction(s) utilisée(s)

optimproblem optimvar solve

== Exemple

Creer et resoudre un petit probleme contraint.

``````matlab
x = optimvar('x', 2, 1, 'LowerBound', 0);
prob = optimproblem('Objective', (x(1) - 1)^2 + (x(2) - 2)^2);
prob.Constraints.limit = x(1) + x(2) <= 4;
[sol, fval] = solve(prob)
``````


== Voir aussi

#nlink(<optimization:optimproblem>)[optimproblem];, #nlink(<optimization:optimvar>)[optimvar];, #nlink(<optimization:solve>)[solve];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
