#import "nelson_help.typ": *

= optimproblem <optimization:optimproblem>

Créer un objet problème d'optimization.

== Syntaxe

- #raw("prob = optimproblem()");
- #raw("prob = optimproblem(name, value)");

== Argument d'entrée

/ name, value: propriétés du problème, par exemple Objective, Constraints, Description ou ObjectiveSense.

== Argument de sortie

/ prob: objet problème d'optimization.

== Description

#strong[optimproblem]; crée un modèle problem-based. Il peut être converti avec prob2struct ou résolu directement pour les modèles sans contrainte pris en charge.


== Fonction(s) utilisée(s)

optimvar solve prob2struct

== Bibliographie

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Exemple

``````matlab
x = optimvar('x');
prob = optimproblem('Objective', (x - 2)^2);
[sol, fval] = solve(prob)

``````


== Voir aussi

#nlink(<optimization:optimvar>)[optimvar];, #nlink(<optimization:solve>)[solve];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
