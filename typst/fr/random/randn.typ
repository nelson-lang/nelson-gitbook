#import "nelson_help.typ": *

= randn <random:randn>

Nombre aléatoire normalement distribué.

== Syntaxe

- #raw("M = randn");
- #raw("M = randn(n)");
- #raw("M = randn(x1, x2, ... , xN)");
- #raw("M = randn(sz)");
- #raw("M = randn(x1, x2, ... , xN, classname)");
- #raw("M = randn(x1, x2, ... , xN, 'like', var)");

== Argument d'entrée

/ n: une variable : une matrice n-par-n sera générée.
/ x1, x2, ... , xN: valeurs x1-par-...-par-xN
/ classname: une chaîne : 'single' ou 'double'
/ var: une variable : single ou double

== Argument de sortie

/ M: une matrice de nombres aléatoires.

== Description

#strong[randn]; renvoie une matrice dont les éléments sont distribués normalement avec une moyenne nulle et une variance unitaire.

 Par défaut, #strong[randn]; utilise l'algorithme ziggurat.

 La graine (seed) peut être modifiée en utilisant #strong[rng];.


== Exemples

``````matlab
rng('default');
randn
rng('default');
randn

``````

``````matlab
rng('default');
randn(6)

``````

``````matlab
rng('default');
randn(3, 2, 3)

``````

``````matlab
rng('default');
randn(3, 2, 'single')

``````

``````matlab
rng('default');
v = single([3, 3]);
randn(3, 2, 'like', v)

``````


== Voir aussi

#nlink(<random:rng>)[rng];, #nlink(<random:randn>)[randn];, #nlink(<constructors_functions:eye>)[eye];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.15.0], [Algorithme retravaillé],
)

// Auteur: Allan CORNET
