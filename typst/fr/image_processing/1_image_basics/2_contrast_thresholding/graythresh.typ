#import "../../nelson_help.typ": *

= graythresh <image_processing:1_image_basics.2_contrast_thresholding.graythresh>

Calcule un seuil global par la methode d Otsu.

== Syntaxe

- #raw("level = graythresh(I)");
- #raw("[level, effectiveness] = graythresh(I)");

== Argument d'entrée

/ I: Image d'entree utilisee pour calculer le seuil d'histogramme.

== Argument de sortie

/ level: Seuil normalise dans l'intervalle \[0, 1\].
/ effectiveness: Mesure d'efficacite de separabilite dans l'intervalle \[0, 1\].

== Description

Calcule un seuil global par la methode d Otsu. La seconde sortie optionnelle est une mesure d efficacite comprise entre 0 et 1.


== Exemple

Calculer et appliquer un seuil global

``````matlab
[X,Y]=meshgrid(linspace(-1,1,96),linspace(-1,1,64));
I=exp(-4*(X.^2+Y.^2));
[level,effectiveness]=graythresh(I);
BW=I>level;
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(BW); g=linspace(0,1,64)'; colormap([g g g]); title('Thresholded');
``````


#align(center)[#image("graythresh_1.png")]

== Voir aussi

#nlink(<image_processing:1_image_basics.2_contrast_thresholding.imbinarize>)[imbinarize];, #nlink(<image_processing:1_image_basics.2_contrast_thresholding.adaptthresh>)[adaptthresh];, #nlink(<image_processing:1_image_basics.2_contrast_thresholding.imhist>)[imhist];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
