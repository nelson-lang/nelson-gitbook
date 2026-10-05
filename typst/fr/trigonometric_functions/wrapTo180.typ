#import "nelson_help.typ": *

= wrapTo180 <trigonometric_functions:wrapTo180>

Ramene un angle en degres dans \[-180, 180\].

== Syntaxe

- #raw("beta = wrapTo180(alpha)");

== Argument d'entrée

/ alpha: angle en degres : scalaire, vecteur ou matrice.

== Argument de sortie

/ beta: angle ramene en degres, dans \[-180, 180\].

== Description

#strong[wrapTo180(alpha)]; ramene les angles en degres dans l'intervalle #strong[\[-180, 180\]];. Les multiples positifs de 180 donnent 180, les multiples negatifs donnent -180.


== Exemple

``````matlab
wrapTo180([190 -190 360])
``````


== Voir aussi

#nlink(<trigonometric_functions:wrapTo360>)[wrapTo360];, #nlink(<trigonometric_functions:wrapToPi>)[wrapToPi];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
