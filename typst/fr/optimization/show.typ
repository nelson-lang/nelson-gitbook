#import "nelson_help.typ": *

= show <optimization:show>

Afficher un objet d'optimization.

== Syntaxe

- #raw("show(obj)");

== Argument d'entrée

/ obj: problème, expression, contrainte ou variable d'optimization.

== Description

#strong[show]; affiche une représentation textuelle compacte d'un objet problem-based. Les variables d'optimization sont affichées par dimensions et indices seulement ; les types et bornes ne sont pas affichés dans l'affichage de la variable. Les expressions, contraintes et problèmes sont affichés sous forme de formules problem-based.


== Fonction(s) utilisée(s)

optimproblem optimvar

== Exemple

``````matlab
x = optimvar('x', 2);
show(x)
obj = log(1 + 100 * (x(2) - x(1)^2)^2 + (1 - x(1))^2);
show(obj)
cons = x(1)^2 + x(2)^2 <= 1;
show(cons)
prob = optimproblem('Objective', obj, 'Constraints', cons);
show(prob)

``````


== Voir aussi

#nlink(<optimization:evaluate>)[evaluate];, #nlink(<optimization:optimproblem>)[optimproblem];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
