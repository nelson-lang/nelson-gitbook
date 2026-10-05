#import "nelson_help.typ": *

= sin <trigonometric_functions:sin>

Calcule le sinus en radians pour chaque élément de x.

== Syntaxe

- #raw("res = sin(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[sin]; calcule le sinus en radians pour chaque élément de #strong[x];.

 La fonction sinus est définie comme :

 #latex("\\sin(x) = \\frac{e^{ix} - e^{-ix}}{2i}"); Pour les arguments réels, elle représente la coordonnée y sur le cercle unité.


== Exemple

``````matlab
A = eye(3, 3);
res = sin(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:asin>)[asin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
