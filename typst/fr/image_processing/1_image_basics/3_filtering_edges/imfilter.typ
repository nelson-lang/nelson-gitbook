#import "../../nelson_help.typ": *

= imfilter <image_processing:1_image_basics.3_filtering_edges.imfilter>

Filtre une image avec un noyau 2D.

== Syntaxe

- #raw("B = imfilter(A, H)");
- #raw("B = imfilter(A, H, option)");

== Argument d'entrée

/ A: Image 2-D numerique\/logique ou image RGB a filtrer.
/ H: Noyau de filtre numerique reel 2-D non vide.
/ option: Option de forme, de padding ou d'operation : same, full, valid, replicate, symmetric, circular, corr ou conv. Un scalaire fini peut etre utilise comme padding constant.

== Argument de sortie

/ B: Image filtree.

== Description

Filtre une image avec un noyau 2D. Par defaut, le filtre est applique par correlation. Les options incluent same, full, valid, replicate, symmetric, circular, corr et conv. Les options textuelles sont insensibles a la casse.


== Exemple

Filtrer une image en niveaux de gris avec un filtre moyenneur

``````matlab
I=double([1 2 3; 4 5 6; 7 8 9]);
H=fspecial('average',[3 3]);
J=imfilter(I,H,'replicate');
figure; subplot(1,2,1); imagesc(I); title('Input');
subplot(1,2,2); imagesc(J); title('Filtered');
``````


#align(center)[#image("imfilter_1.png")]

== Voir aussi

#nlink(<image_processing:1_image_basics.3_filtering_edges.fspecial>)[fspecial];, #nlink(<image_processing:1_image_basics.3_filtering_edges.imgaussfilt>)[imgaussfilt];, #nlink(<image_processing:1_image_basics.3_filtering_edges.padarray>)[padarray];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
