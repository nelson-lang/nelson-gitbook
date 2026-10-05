#import "../../nelson_help.typ": *

= edge <image_processing:1_image_basics.3_filtering_edges.edge>

Detecte les contours dans une image en niveaux de gris.

== Syntaxe

- #raw("BW = edge(I)");
- #raw("BW = edge(I, method)");
- #raw("BW = edge(I, method, thresh)");
- #raw("BW = edge(I, method, thresh, direction)");
- #raw("BW = edge(I, method, thresh, sigma)");
- #raw("[BW, thresh] = edge(...)");

== Argument d'entrée

/ I: Image d'entree en niveaux de gris ou RGB.
/ method: Methode de detection : 'sobel', 'prewitt', 'roberts', 'log' ou 'canny'. La valeur par defaut est 'sobel'.
/ thresh: Seuil de detection. Pour 'canny', il peut etre un scalaire ou un vecteur a deux elements.
/ direction: Direction utilisee avec 'sobel', 'prewitt' et 'roberts' : 'horizontal', 'vertical' ou 'both'.
/ sigma: Echelle gaussienne positive utilisee avec 'log' et 'canny'.

== Argument de sortie

/ BW: Image logique dont les pixels vrais indiquent les contours detectes.
/ thresh: Seuil utilise par le detecteur.

== Description

Detecte les contours dans une image en niveaux de gris. Les methodes prises en charge sont sobel, prewitt, roberts, log et canny. Les methodes sobel, prewitt et roberts acceptent horizontal, vertical ou both comme direction. Les methodes log et canny acceptent un sigma scalaire positif. Le seuil canny peut etre scalaire ou un vecteur a deux elements.


== Exemple

Detecter les contours

``````matlab
[X,Y]=meshgrid(linspace(-1,1,96),linspace(-1,1,64));
I=exp(-4*(X.^2+Y.^2));
BW=edge(I,'sobel');
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(BW); g=linspace(0,1,64)'; colormap([g g g]); title('Edges');
``````


#align(center)[#image("edge_1.png")]

== Voir aussi

#nlink(<image_processing:1_image_basics.3_filtering_edges.imfilter>)[imfilter];, #nlink(<image_processing:1_image_basics.3_filtering_edges.fspecial>)[fspecial];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
