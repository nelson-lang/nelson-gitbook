#import "nelson_help.typ": *

= optimset <optimization:optimset>

Créer ou modifier des structures d'options d'optimization.

== Syntaxe

- #raw("options = optimset()");
- #raw("options = optimset(name, value)");
- #raw("options = optimset(oldopts, name, value)");

== Argument d'entrée

/ name, value: paires nom-valeur d'options.
/ oldopts: structure d'options existante.

== Argument de sortie

/ options: structure d'options.

== Description

#strong[optimset]; crée une structure acceptée par les solveurs directs du module. Les noms d'options acceptent les abréviations non ambiguës.


== Bibliographie

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Exemple

``````matlab
opts = optimset('TolX', 1e-8, 'Display', 'off')
tol = optimget(opts, 'TolX')

``````


== Voir aussi

#nlink(<optimization:optimget>)[optimget];, #nlink(<optimization:optimoptions>)[optimoptions];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
