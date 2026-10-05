#import "nelson_help.typ": *

= zeros <constructors_functions:zeros>

Crée une matrice composée de zéros.

== Syntaxe

- #raw("R = zeros");
- #raw("R = zeros(n)");
- #raw("R = zeros(n, m)");
- #raw("R = zeros(n, m, ..., z)");
- #raw("R = zeros(n, m, ..., z, 'like', V)");
- #raw("R = zeros(n, m, ..., z, classname)");

== Argument d'entrée

/ n: une variable
/ m: une variable

== Description

#strong[zeros]; retourne une matrice composée de zéros.


== Exemples

``````matlab
zeros(3, 2)
``````

``````matlab
zeros(3, 1, 3, 'single')
``````

``````matlab
A = single([3 3])
B = zeros(2, 4, 'like', A)
``````

``````matlab
tic(); single(1) * zeros(1000); toc()
tic();zeros(1000, 'single'); toc()
``````


== Voir aussi

#nlink(<constructors_functions:eye>)[eye];, #nlink(<constructors_functions:ones>)[ones];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
