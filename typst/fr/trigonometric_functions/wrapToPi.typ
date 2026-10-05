#import "nelson_help.typ": *

= wrapToPi <trigonometric_functions:wrapToPi>

Ramene un angle en radians dans \[-pi, pi\].

== Syntaxe

- #raw("beta = wrapToPi(alpha)");

== Argument d'entrée

/ alpha: angle en radians : scalaire, vecteur ou matrice.

== Argument de sortie

/ beta: angle ramene en radians, dans \[-pi, pi\].

== Description

#strong[wrapToPi(alpha)]; ramene les angles en radians dans l'intervalle #strong[\[-pi, pi\]];. Les multiples positifs de pi donnent pi, les multiples negatifs donnent -pi.


== Exemple

``````matlab
wrapToPi([4 -4])
``````


== Voir aussi

#nlink(<trigonometric_functions:wrapTo2Pi>)[wrapTo2Pi];, #nlink(<trigonometric_functions:wrapTo180>)[wrapTo180];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
