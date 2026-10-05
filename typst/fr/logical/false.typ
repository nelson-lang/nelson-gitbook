#import "nelson_help.typ": *

= false <logical:false>

Valeur logique false.

== Syntaxe

- #raw("false");
- #raw("l = false(n)");
- #raw("l = false(sz)");
- #raw("l = false(size(A))");
- #raw("l = false(n, m, ..., k)");
- #raw("l = false(n, m, 'like', sp)");

== Argument d'entrée

/ n: une valeur entière.
/ sz: un vecteur ligne de dimensions, comme le résultat de #strong[size];.
/ A: un tableau dont la taille est utilisée pour créer la sortie.
/ n, m, ..., k: un tableau n par m par ... par k indiquant la taille.
/ sp: une structure creuse (sparse) ou un tableau.

== Argument de sortie

/ l: une valeur logique : false.

== Description

#strong[false]; construit un tableau de valeurs logiques false.


== Exemple

``````matlab
false
false(4)
false(4, 1, 4)
A = zeros(2, 3);
F = false(size(A))
L = logical(sparse(1, 2))
L2 = false(3,'like', L);
``````


== Voir aussi

#nlink(<logical:true>)[true];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
