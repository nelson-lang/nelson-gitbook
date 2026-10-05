#import "nelson_help.typ": *

= cos <trigonometric_functions:cos>

Calcule le cosinus en radians pour chaque élément de x.

== Syntaxe

- #raw("res = cos(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[cos]; calcule le cosinus en radians pour chaque élément de #strong[x];.

 La fonction cosinus est définie comme :

 #latex("\\cos(x) = \\frac{e^{ix} + e^{-ix}}{2}"); Pour les arguments réels, elle représente la coordonnée x sur le cercle unité.


== Exemple

``````matlab
A = eye(3, 3);
res = cos(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:acos>)[acos];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
