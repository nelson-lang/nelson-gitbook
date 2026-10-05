#import "nelson_help.typ": *

= wrapTo2Pi <trigonometric_functions:wrapTo2Pi>

Ramene un angle en radians dans \[0, 2\*pi\].

== Syntaxe

- #raw("beta = wrapTo2Pi(alpha)");

== Argument d'entrée

/ alpha: angle en radians : scalaire, vecteur ou matrice.

== Argument de sortie

/ beta: angle ramene en radians, dans \[0, 2\*pi\].

== Description

#strong[wrapTo2Pi(alpha)]; ramene les angles en radians dans l'intervalle #strong[\[0, 2\*pi\]];. Les multiples positifs de 2\*pi donnent 2\*pi, et zero donne 0.


== Exemple

``````matlab
wrapTo2Pi([-1 2*pi])
``````


== Voir aussi

#nlink(<trigonometric_functions:wrapToPi>)[wrapToPi];, #nlink(<trigonometric_functions:wrapTo360>)[wrapTo360];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
