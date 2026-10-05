#import "nelson_help.typ": *

= wrapTo360 <trigonometric_functions:wrapTo360>

Ramene un angle en degres dans \[0, 360\].

== Syntaxe

- #raw("beta = wrapTo360(alpha)");

== Argument d'entrée

/ alpha: angle en degres : scalaire, vecteur ou matrice.

== Argument de sortie

/ beta: angle ramene en degres, dans \[0, 360\].

== Description

#strong[wrapTo360(alpha)]; ramene les angles en degres dans l'intervalle #strong[\[0, 360\]];. Les multiples positifs de 360 donnent 360, et zero donne 0.


== Exemple

``````matlab
wrapTo360([-10 370 720])
``````


== Voir aussi

#nlink(<trigonometric_functions:wrapTo180>)[wrapTo180];, #nlink(<trigonometric_functions:wrapTo2Pi>)[wrapTo2Pi];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
