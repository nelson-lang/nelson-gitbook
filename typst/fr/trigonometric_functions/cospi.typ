#import "nelson_help.typ": *

= cospi <trigonometric_functions:cospi>

Calcule précisément cos(X \* pi).

== Syntaxe

- #raw("res = cospi(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[res \= cospi(x)]; calcule #strong[cos(x \* pi)]; précisément.

 Pour les entiers, #strong[cospi(x)]; vaut +1 ou -1.

 Pour les entiers impairs,#strong[cospi(x \/ 2)]; est exactement zéro.


== Exemple

``````matlab
x = [0, 1/2, 1, 3/2, 2];
r = cos(x * pi)
res = cospi(x)
``````


== Voir aussi

#nlink(<trigonometric_functions:cos>)[cos];, #nlink(<trigonometric_functions:sinpi>)[sinpi];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
