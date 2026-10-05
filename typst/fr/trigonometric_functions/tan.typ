#import "nelson_help.typ": *

= tan <trigonometric_functions:tan>

Calcule la tangente en radians pour chaque élément de x.

== Syntaxe

- #raw("res = tan(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[tan]; calcule la tangente en radians pour chaque élément de #strong[x];.

 La fonction tangente est définie comme :

 #latex("\\tan(x) = \\frac{\\sin(x)}{\\cos(x)} = \\frac{e^{ix} - e^{-ix}}{i(e^{ix} + e^{-ix})}"); Elle a des asymptotes verticales à

 #latex("x = \\frac{\\pi}{2} + n\\pi"); pour les entiers #strong[n];.


== Exemple

``````matlab
A = eye(3, 3);
res = tan(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:atan>)[atan];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
