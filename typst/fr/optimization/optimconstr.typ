#import "nelson_help.typ": *

= optimconstr <optimization:optimconstr>

Créer une contrainte d'optimization.

== Syntaxe

- #raw("c = optimconstr()");
- #raw("c = optimconstr(lhs, relation, rhs)");

== Argument d'entrée

/ lhs, rhs: expressions gauche et droite.
/ relation: relation de contrainte : \<\=, \=\= ou \>\=.

== Argument de sortie

/ c: objet contrainte d'optimization.

== Description

#strong[optimconstr]; crée des contraintes utilisées par les problèmes d'optimization. Les opérateurs relationnels sur expressions créent aussi des contraintes.


== Fonction(s) utilisée(s)

optimproblem optimexpr

== Bibliographie

P. E. Gill, W. Murray and M. H. Wright, Practical Optimization, Academic Press, 1981.

== Exemple

``````matlab
x = optimvar('x');
c = optimconstr(x, '<=', 5)

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
