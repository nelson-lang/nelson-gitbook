#import "nelson_help.typ": *

= eye <constructors_functions:eye>

Crée une matrice identité.

== Syntaxe

- #raw("R = eye");
- #raw("R = eye(n)");
- #raw("R = eye(n, m)");
- #raw("R = eye(n, m, ..., z)");
- #raw("R = eye(n, m, ..., z, 'like', V)");
- #raw("R = eye(n, m, ..., z, classname)");

== Argument d'entrée

/ n: une variable : matrice n-par-n
/ m: une variable : matrice n-par-m

== Description

#strong[eye]; retourne une matrice identité.


== Exemples

``````matlab
eye(3)
``````

``````matlab
eye(3,1,3,'single')
``````

``````matlab
A = single([3 3])
B = eye(2,4,'like', A)
``````

``````matlab
A = eye(0, 4)
``````


== Voir aussi

#nlink(<constructors_functions:ones>)[ones];, #nlink(<constructors_functions:zeros>)[zeros];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
