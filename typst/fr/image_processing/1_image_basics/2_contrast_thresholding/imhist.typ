#import "../../nelson_help.typ": *

= imhist <image_processing:1_image_basics.2_contrast_thresholding.imhist>

Calcule les effectifs de l histogramme d image.

== Syntaxe

- #raw("counts = imhist(I)");
- #raw("[counts, binLocations] = imhist(I)");
- #raw("[counts, binLocations] = imhist(I, n)");

== Argument d'entrée

/ I: Image d'entree d'intensite ou logique.
/ n: Nombre entier positif de bins d'histogramme.

== Argument de sortie

/ counts: Effectifs de l'histogramme sous forme de vecteur colonne.
/ binLocations: Emplacements des bins dans l'echelle native de l'image.

== Description

Calcule les effectifs de l histogramme d image. Les emplacements de bins utilisent l echelle native des images entieres et l intervalle \[0, 1\] pour les images flottantes et logiques.


== Exemple

Afficher un histogramme d image

``````matlab
I=repmat(linspace(0,1,96),64,1);
[counts,bins]=imhist(I,32);
figure; bar(bins,counts); title('Histogram');
``````


#align(center)[#image("imhist_1.png")]

== Voir aussi

#nlink(<image_processing:1_image_basics.2_contrast_thresholding.imadjust>)[imadjust];, #nlink(<image_processing:1_image_basics.2_contrast_thresholding.graythresh>)[graythresh];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
