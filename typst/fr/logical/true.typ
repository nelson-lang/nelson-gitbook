#import "nelson_help.typ": *

= true <logical:true>

Valeur logique true.

== Syntaxe

- #raw("true");
- #raw("l = true(n)");
- #raw("l = true(sz)");
- #raw("l = true(size(A))");
- #raw("l = true(n, m, ..., k)");
- #raw("l = true(n, m, 'like', sp)");

== Argument d'entrée

/ n: une valeur entière.
/ sz: un vecteur ligne de dimensions, comme le résultat de #strong[size];.
/ A: un tableau dont la taille est utilisée pour créer la sortie.
/ n, m, ..., k: un tableau n par m par ... par k indiquant la taille.
/ sp: une structure creuse (sparse) ou un tableau.

== Argument de sortie

/ l: une valeur logique : true.

== Description

#strong[true]; construit un tableau de valeurs logiques true.


== Exemple

``````matlab
true
true(4)
true(4, 1, 4)
A = zeros(2, 3);
T = true(size(A))
L = logical(sparse(1, 2))
L2 = true(3,'like', L);
``````


== Voir aussi

#nlink(<logical:false>)[false];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
