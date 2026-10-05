#import "../nelson_help.typ": *

= angle <elementary_functions:3_complex_numbers.angle>

Angle de phase

== Syntaxe

- #raw("R = angle(Z)");

== Argument d'entrée

/ Z: une variable (double, single, complex)

== Argument de sortie

/ R: résultat de la fonction angle.

== Description

#strong[angle]; calcule l'angle de phase, équivalent à #strong[atan2(imag(Z), real(Z))];.


== Exemple

``````matlab
x = [1+i,-i;i,2i];
r = angle(x)
``````


== Voir aussi

#nlink(<trigonometric_functions:atan2>)[atan2];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
