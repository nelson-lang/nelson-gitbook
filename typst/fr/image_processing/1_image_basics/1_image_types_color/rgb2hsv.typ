#import "../../nelson_help.typ": *

= rgb2hsv <image_processing:1_image_basics.1_image_types_color.rgb2hsv>

Convertit des valeurs couleur RGB en valeurs HSV.

== Syntaxe

- #raw("HSV = rgb2hsv(RGB)");
- #raw("hsvmap = rgb2hsv(map)");

== Argument d'entrée

/ RGB: Image RGB m-by-n-by-3 de classe double, single, uint8 ou uint16.
/ map: Colormap RGB double avec des valeurs dans l'intervalle \[0, 1\].

== Argument de sortie

/ HSV: Image HSV. La sortie est single uniquement lorsque l'image d'entree est single ; sinon elle est double.
/ hsvmap: Colormap HSV avec le meme nombre de lignes que map.

== Description

Convertit des valeurs couleur RGB en valeurs HSV. Les images RGB doivent etre des tableaux reels double, single, uint8 ou uint16. Les valeurs d images RGB flottantes sont converties sans clipping. Les images RGB vides conservent leur taille.

 Une colormap RGB double avec des valeurs dans \[0, 1\] est convertie ligne par ligne.


== Exemple

Afficher le canal teinte apres conversion RGB vers HSV

``````matlab
RGB=zeros(64,64,3);
[X,Y]=meshgrid(linspace(0,1,64),linspace(0,1,64));
RGB(:,:,1)=X; RGB(:,:,2)=Y; RGB(:,:,3)=1-X;
HSV=rgb2hsv(RGB);
figure; subplot(1,2,1); image(RGB); title('RGB');
subplot(1,2,2); imagesc(HSV(:,:,1)); t=linspace(0,1,64)'; colormap([t zeros(64,1) 1-t]); title('Hue');
``````


#align(center)[#image("rgb2hsv_1.png")]

== Voir aussi

#nlink(<image_processing:1_image_basics.1_image_types_color.hsv2rgb>)[hsv2rgb];, #nlink(<image_processing:1_image_basics.1_image_types_color.rgb2ycbcr>)[rgb2ycbcr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
