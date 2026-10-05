#import "../../nelson_help.typ": *

= activecontour <image_processing:2_image_analysis.7_segmentation.activecontour>

Segmente une image depuis un masque initial de contour.

== Syntaxe

- #raw("BW = activecontour(I, mask)");
- #raw("BW = activecontour(I, mask, iterations)");
- #raw("BW = activecontour(I, mask, iterations, method)");
- #raw("BW = activecontour(___, Name, Value)");

== Argument d'entrée

/ I: Image 2-D en niveaux de gris, RGB ou RGBA, reelle et finie. Les images couleur sont converties en luminance avant segmentation.
/ mask: Masque initial de contour 2-D. Les masques numeriques sont convertis en valeurs logiques.
/ iterations: Nombre entier positif ou nul d'iterations d'evolution. La valeur par defaut est 100.
/ method: Methode de segmentation : 'chan-vese' ou 'edge'.
/ Name, Value: Les options prises en charge sont 'Iterations', 'Method', 'SmoothFactor' et 'ContractionBias'.

== Argument de sortie

/ BW: Masque logique de la region segmentee.

== Description

Segmente une image 2-D reelle finie en faisant evoluer un masque initial binaire. Les images RGB et RGBA sont converties en luminance, et le canal alpha est ignore. La methode par defaut est chan-vese. La methode edge utilise le meme modele de regions avec un lissage pondere par les contours.

 Les options nom-valeur prises en charge sont #strong[Iterations];, #strong[Method];, #strong[SmoothFactor];, un scalaire fini non negatif, et #strong[ContractionBias];, un scalaire fini dans l intervalle \[-1, 1\]. Les valeurs par defaut sont 100, chan-vese, 1 et 0.


== Exemples

Segmenter un disque clair depuis un petit masque initial

``````matlab
[X,Y]=meshgrid(linspace(-1,1,96),linspace(-1,1,96));
I=exp(-9*(X.^2+Y.^2));
mask=false(size(I));
mask(40:56,40:56)=true;
BW=activecontour(I,mask,40);
figure; subplot(1,3,1); imagesc(I); title('Input');
subplot(1,3,2); imagesc(mask); title('Initial');
subplot(1,3,3); imagesc(BW); title('Segmented');
``````


#align(center)[#image("activecontour_1.png")]
Utiliser le mode edge avec un lissage explicite

``````matlab
I=zeros(7,7);
I(3:5,3:5)=1;
mask=false(7,7);
mask(4,4)=true;
BW=activecontour(I,mask,'Iterations',8,'Method','edge','SmoothFactor',1,'ContractionBias',0);
``````


== Voir aussi

#nlink(<image_processing:2_image_analysis.7_segmentation.watershed>)[watershed];, #nlink(<image_processing:2_image_analysis.7_segmentation.imreconstruct>)[imreconstruct];, #nlink(<image_processing:1_image_basics.2_contrast_thresholding.graythresh>)[graythresh];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
