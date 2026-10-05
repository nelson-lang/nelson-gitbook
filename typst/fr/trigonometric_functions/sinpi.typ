#import "nelson_help.typ": *

= sinpi <trigonometric_functions:sinpi>

Calcule précisément sin(X \* pi).

== Syntaxe

- #raw("res = sinpi(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[res \= sinpi(x)]; calcule #strong[sin(x \* pi)]; précisément.

 Pour les entiers impairs, #strong[sinpi(x \/ 2)]; vaut +1 ou -1.

 Pour les entiers, #strong[sinpi(x)]; est exactement zéro.


== Exemple

``````matlab
x = [0, 1/2, 1, 3/2, 2];
r = sin(x * pi)
res = sinpi(x)
``````


== Voir aussi

#nlink(<trigonometric_functions:sin>)[sin];, #nlink(<trigonometric_functions:cospi>)[cospi];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
