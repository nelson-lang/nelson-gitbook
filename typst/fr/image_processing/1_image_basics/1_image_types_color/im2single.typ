#import "../../nelson_help.typ": *

= im2single <image_processing:1_image_basics.1_image_types_color.im2single>

Convertit une image en precision simple.

== Syntaxe

- #raw("J = im2single(I)");
- #raw("J = im2single(I, 'indexed')");

== Argument d'entrée

/ I: Image d'entree.
/ 'indexed': Mode optionnel pour les images indexees. Les valeurs uint8 et uint16 sont converties en indices single en base un.

== Argument de sortie

/ J: Image convertie en precision simple.

== Description

Convertit une image en precision simple.

 Pour les images indexees, les entrees uint8 et uint16 sont decalees de un dans la sortie single.


== Exemple

Convertir un tableau uint8 en precision simple

``````matlab
I=reshape(uint8(linspace(1,255,25)),[5 5]);
J=im2single(I);
figure; imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('single image');
``````


#align(center)[#image("im2single_1.png")]

== Voir aussi

#nlink(<image_processing:1_image_basics.1_image_types_color.im2double>)[im2double];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2uint8>)[im2uint8];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2uint16>)[im2uint16];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
