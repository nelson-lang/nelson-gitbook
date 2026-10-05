#import "nelson_help.typ": *

= solve <optimization:solve>

Résoudre un objet problème d'optimization.

== Syntaxe

- #raw("sol = solve(prob)");
- #raw("[sol, fval, exitflag, output] = solve(prob, name, value)");

== Argument d'entrée

/ prob: objet problème d'optimization.
/ name, value: réglages facultatifs du solveur.

== Argument de sortie

/ sol: structure de solution.
/ fval: valeur de l'objectif.
/ exitflag: indicateur de terminaison.

== Description

#strong[solve]; compile un modèle problem-based pris en charge et appelle un solveur direct.


== Fonction(s) utilisée(s)

prob2struct fminsearch

== Bibliographie

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Exemple

``````matlab
x = optimvar('x');
prob = optimproblem('Objective', (x - 2)^2);
[sol, fval] = solve(prob)

``````


== Voir aussi

#nlink(<optimization:optimproblem>)[optimproblem];, #nlink(<optimization:prob2struct>)[prob2struct];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
