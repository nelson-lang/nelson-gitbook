#import "../../nelson_help.typ": *

= im2gray <image_processing:1_image_basics.1_image_types_color.im2gray>

Convertit une image RGB en niveaux de gris et conserve les images deja grises.

== Syntaxe

- #raw("J = im2gray(I)");

== Argument d'entrée

/ I: Image d'entree numerique en niveaux de gris ou image RGB m-by-n-by-3.

== Argument de sortie

/ J: Image en niveaux de gris. Les entrees deja grises sont renvoyees inchangees.

== Description

Convertit une image RGB en niveaux de gris et conserve les images deja grises.

 L'entree doit etre numerique et non logique. Les entrees 3-D doivent etre des images RGB avec exactement trois plans de couleur.


== Exemple

Convertir une image RGB en niveaux de gris

``````matlab
RGB=zeros(64,64,3);
[X,Y]=meshgrid(linspace(0,1,64),linspace(0,1,64));
RGB(:,:,1)=X; RGB(:,:,2)=Y; RGB(:,:,3)=1-X;
G=im2gray(RGB);
figure; imagesc(G); g=linspace(0,1,64)'; colormap([g g g]); title('Gray image');
``````


#align(center)[#image("im2gray_1.png")]

== Voir aussi

#nlink(<image_processing:1_image_basics.1_image_types_color.rgb2gray>)[rgb2gray];, #nlink(<image_processing:1_image_basics.1_image_types_color.ind2gray>)[ind2gray];, #nlink(<image_processing:1_image_basics.1_image_types_color.im2double>)[im2double];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
