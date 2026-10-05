#import "nelson_help.typ": *

= ones <constructors_functions:ones>

Crée une matrice composée de uns.

== Syntaxe

- #raw("R = ones");
- #raw("R = ones(n)");
- #raw("R = ones(n, m)");
- #raw("R = ones(n, m, ..., z)");
- #raw("R = ones(n, m, ..., z, 'like', V)");
- #raw("R = ones(n, m, ..., z, classname)");

== Argument d'entrée

/ n: une variable : matrice n-par-n
/ m: une variable : matrice n-par-m

== Description

#strong[ones]; retourne une matrice composée de uns.


== Exemples

``````matlab
ones(3,2)
``````

``````matlab
ones(3,1,3,'single')
``````

``````matlab
A = single([3 3])
B = ones(2,4,'like', A)
``````

``````matlab
tic(); single(1) * ones(1000); toc()
tic();ones(1000,'single'); toc()
``````


== Voir aussi

#nlink(<constructors_functions:eye>)[eye];, #nlink(<constructors_functions:zeros>)[zeros];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
