#import "../../nelson_help.typ": *

= im2uint8 <image_processing:1_image_basics.1_image_types_color.im2uint8>

Convertit une image en entier non signe 8 bits.

== Syntaxe

- #raw("J = im2uint8(I)");
- #raw("J = im2uint8(I, 'indexed')");

== Argument d'entrée

/ I: Image d'entree. Les classes d'intensite prises en charge sont double, single, logical, uint8, uint16 et int16.
/ 'indexed': Mode optionnel pour les images indexees. Les entrees flottantes utilisent des indices en base un et les entrees entieres utilisent des indices en base zero.

== Argument de sortie

/ J: Image convertie en uint8.

== Description

Convertit une image en entier non signe 8 bits.

 Pour les images indexees, les entrees entieres sont traitees comme des indices base zero et les entrees double comme des indices base un.


== Exemple

Convertir un tableau uint16 en uint8

``````matlab
I=reshape(uint16(linspace(0,65535,25)),[5 5]);
J=im2uint8(I);
figure; imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('uint8 image');
``````


#align(center)[#image("im2uint8_1.png")]

== Voir aussi

#nlink(<image_processing:1_image_basics.1_image_types_color.im2uint16>)[im2uint16];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2single>)[im2single];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2double>)[im2double];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
