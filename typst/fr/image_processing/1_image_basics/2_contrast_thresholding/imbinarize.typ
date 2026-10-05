#import "../../nelson_help.typ": *

= imbinarize <image_processing:1_image_basics.2_contrast_thresholding.imbinarize>

Binarise une image avec un seuil.

== Syntaxe

- #raw("BW = imbinarize(I)");
- #raw("BW = imbinarize(I, T)");
- #raw("BW = imbinarize(I, 'global')");
- #raw("BW = imbinarize(I, 'adaptive')");
- #raw("BW = imbinarize(__, 'Sensitivity', value)");
- #raw("BW = imbinarize(__, 'ForegroundPolarity', polarity)");

== Argument d'entrée

/ I: Image d'entree.
/ T: Seuil numerique. Il peut etre scalaire ou de meme taille que I.
/ method: Methode de binarisation : 'global' ou 'adaptive'.
/ 'Sensitivity': Sensibilite transmise au seuillage adaptatif.
/ 'ForegroundPolarity': Polarite du premier plan pour le seuillage adaptatif : 'bright' ou 'dark'.

== Argument de sortie

/ BW: Image binaire logique.

== Description

Binarise une image avec un seuil. La methode globale utilise graythresh quand aucun seuil n est fourni. Un seuil numerique peut etre scalaire ou de meme taille que l entree. La methode adaptive utilise adaptthresh et prend en charge une polarite de premier plan bright ou dark.


== Exemples

Binariser une image en niveaux de gris avec un seuil global

``````matlab
I=[0 0.25 0.75 1; 0.1 0.4 0.6 0.9];
BW=imbinarize(I,0.5);
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(BW); g=linspace(0,1,64)'; colormap([g g g]); title('Binary');
``````


#align(center)[#image("imbinarize_1.png")]
Binariser avec un seuil adaptatif

``````matlab
I=[0.1 0.1 0.1; 0.1 0.9 0.1; 0.1 0.1 0.1];
BW=imbinarize(I,'adaptive','Sensitivity',0.4)
``````


== Voir aussi

#nlink(<image_processing:1_image_basics.2_contrast_thresholding.graythresh>)[graythresh];, #nlink(<image_processing:1_image_basics.2_contrast_thresholding.adaptthresh>)[adaptthresh];, #nlink(<image_processing:1_image_basics.2_contrast_thresholding.imcomplement>)[imcomplement];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
