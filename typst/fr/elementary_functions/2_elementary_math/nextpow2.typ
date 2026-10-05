#import "../nelson_help.typ": *

= nextpow2 <elementary_functions:2_elementary_math.nextpow2>

Exposant de la puissance de 2 immédiatement supérieure

== Syntaxe

- #raw("R = nextpow2(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ R: résultat de nextpow2 : puissance de 2 immédiatement supérieure.

== Description

si #strong[M]; est un vecteur ou une matrice,#strong[nextpow2(M)]; s'applique élément par élément.

 Si #strong[M]; est un scalaire, #strong[nextpow2(M)]; renvoie le premier#strong[p]; tel que #strong[2^p \>\= abs(M)];.


== Exemple

``````matlab
R = nextpow2([10, Inf, 30, -Inf, 90, NaN])
M = uint32([1020 4000 32700]);
R = nextpow2(M)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.pow2>)[pow2];, #nlink(<elementary_functions:2_elementary_math.log2>)[log2];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
