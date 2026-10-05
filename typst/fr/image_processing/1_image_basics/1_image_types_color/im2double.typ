#import "../../nelson_help.typ": *

= im2double <image_processing:1_image_basics.1_image_types_color.im2double>

Convertit une image en précision double.

== Syntaxe

- #raw("IM = im2double(I)");
- #raw("IM = im2double(I,'indexed')");

== Argument d'entrée

/ I: Image d'entrée : scalaire, vecteur, matrice ou tableau multidimensionnel de type single, double, int16, uint8, uint16 ou logical.

== Argument de sortie

/ IM: L'image convertie est renvoyée sous forme d'un tableau numérique ayant les mêmes dimensions que l'image d'entrée I et de type double.

== Description

#strong[IM \= im2double(I)]; convertit l'image d'entrée I au format en précision double. L'image d'entrée IM peut être une image en niveaux de gris, en couleurs vraies ou binaire. Lors de la conversion, #strong[im2double]; remet à l'échelle les valeurs de pixels depuis leur format entier d'origine vers une plage flottante \[0, 1\].

 Pour une image indexée, #strong[IM \= im2double(I, 'indexed')]; convertit également l'image I en précision double, mais ajoute un décalage de 1 aux valeurs de pixels lors de la conversion depuis les types entiers.

 Les images indexees peuvent etre des tableaux uint8, uint16, double, single ou logical.


== Exemple

Convertir une image uint8 en precision double

``````matlab
I=reshape(uint8(linspace(1,255,100)),[10 10]);
IM=im2double(I);
figure; imagesc(IM); g=linspace(0,1,64)'; colormap([g g g]); title('Double image');
``````


#align(center)[#image("im2double_1.png")]

== Voir aussi

#nlink(<double:double>)[double];, #nlink(<graphics_io:imread>)[imread];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2single>)[im2single];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2uint8>)[im2uint8];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2uint16>)[im2uint16];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2gray>)[im2gray];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
