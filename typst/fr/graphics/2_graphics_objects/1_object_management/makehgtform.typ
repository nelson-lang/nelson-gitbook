#import "../../nelson_help.typ": *

= makehgtform <graphics:2_graphics_objects.1_object_management.makehgtform>

Crée une matrice de transformation 4 par 4.

== Syntaxe

- #raw("M = makehgtform()");
- #raw("M = makehgtform('translate', [tx ty tz])");
- #raw("M = makehgtform('scale', s)");
- #raw("M = makehgtform('xrotate', r)");
- #raw("M = makehgtform('yrotate', r)");
- #raw("M = makehgtform('zrotate', r)");
- #raw("M = makehgtform(transform1, value1, transform2, value2, ...)");

== Argument d'entrée

/ 'translate': un vecteur à trois éléments \[tx ty tz\] : une translation.
/ 'scale': un scalaire ou un vecteur à trois éléments : une mise à l'échelle uniforme ou par axe.
/ 'xrotate', 'yrotate', 'zrotate': un angle scalaire en radians : une rotation autour de cet axe.

== Argument de sortie

/ M: une matrice de transformation 4 par 4.

== Description

#strong[makehgtform]; construit une matrice de transformation 4 par 4 à partir d'une suite de translations, mises à l'échelle et rotations. Les transformations sont multipliées de gauche à droite : la première listée est donc appliquée en dernier à un point. Le résultat convient à la propriété #strong[Matrix]; d'un objet de transformation.


== Exemple

``````matlab
M = makehgtform('translate', [1 0 0], 'zrotate', pi / 2)
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.hggroup>)[hggroup];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
