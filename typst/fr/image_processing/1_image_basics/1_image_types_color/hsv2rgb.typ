#import "../../nelson_help.typ": *

= hsv2rgb <image_processing:1_image_basics.1_image_types_color.hsv2rgb>

Convertit des valeurs couleur HSV en valeurs RGB.

== Syntaxe

- #raw("RGB = hsv2rgb(HSV)");
- #raw("rgbmap = hsv2rgb(hsvmap)");

== Argument d'entrée

/ HSV: Image HSV m-by-n-by-3 de classe double, single ou logical.
/ hsvmap: Colormap HSV avec trois colonnes et des valeurs dans l'intervalle \[0, 1\].

== Argument de sortie

/ RGB: Image RGB. La sortie est single uniquement lorsque l'image d'entree est single ; sinon elle est double.
/ rgbmap: Colormap RGB avec le meme nombre de lignes que hsvmap.

== Description

Convertit des valeurs couleur HSV en valeurs RGB. Les entrees HSV doivent etre des tableaux reels double, single ou logical. Les canaux saturation et valeur sont convertis sans clipping. Les images HSV vides conservent leur taille.

 Les colormaps HSV non vides a trois colonnes et avec des valeurs dans \[0, 1\] sont converties ligne par ligne.


== Exemple

Convertir une image HSV en RGB

``````matlab
[H,S]=meshgrid(linspace(0,1,96),linspace(0,1,64));
HSV=zeros(64,96,3); HSV(:,:,1)=H; HSV(:,:,2)=S; HSV(:,:,3)=1;
RGB=hsv2rgb(HSV);
figure; image(RGB); title('HSV to RGB');
``````


#align(center)[#image("hsv2rgb_1.png")]

== Voir aussi

#nlink(<image_processing:1_image_basics.1_image_types_color.rgb2hsv>)[rgb2hsv];, #nlink(<image_processing:1_image_basics.1_image_types_color.ycbcr2rgb>)[ycbcr2rgb];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
