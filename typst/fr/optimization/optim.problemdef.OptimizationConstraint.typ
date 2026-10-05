#import "nelson_help.typ": *

= optim.problemdef.OptimizationConstraint <optimization:optim.problemdef.OptimizationConstraint>

Contraintes d'optimisation.

== Syntaxe

- #raw("constr = optimconstr(...)");
- #raw("prob.Constraints.name = constr");

== Argument d'entrée

/ left, relation, right: expression gauche, operateur de relation et expression droite utilises pour construire une contrainte.
/ prob.Constraints.name: emplacement de contrainte nommee dans un probleme d'optimisation.

== Argument de sortie

/ constr: objet contrainte d'optimisation.

== Description

optim.problemdef.OptimizationConstraint represente des contraintes construites a partir de variables et d'expressions d'optimisation.

 Les contraintes sont attachees a un OptimizationProblem via sa propriete Constraints.


== Fonction(s) utilisée(s)

optimvar optimproblem

== Exemple

Construire une contrainte a partir de variables d'optimisation.

``````matlab
x = optimvar('x', 2, 1, 'LowerBound', 0);
constr = x(1) + x(2) <= 4
``````


== Voir aussi

#nlink(<optimization:optimconstr>)[optimconstr];, #nlink(<optimization:optimproblem>)[optimproblem];, #nlink(<optimization:solve>)[solve];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
