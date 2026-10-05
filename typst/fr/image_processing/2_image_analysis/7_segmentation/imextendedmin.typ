#import "../../nelson_help.typ": *

= imextendedmin <image_processing:2_image_analysis.7_segmentation.imextendedmin>

Trouve les minima etendus dans une image 2-D.

== Syntaxe

- #raw("BW = imextendedmin(I, h)");
- #raw("BW = imextendedmin(I, h, conn)");

== Argument d'entrée

/ I: Image 2-D reelle finie.
/ h: Hauteur finie non negative pour la transformation h-minima.
/ conn: Connectivite, soit 4, 8, ou une matrice 3-by-3 equivalente.

== Argument de sortie

/ BW: Masque logique des minima regionaux apres suppression h-minima.

== Description

imextendedmin applique imhmin puis trouve les minima regionaux. Cette fonction aide a construire des masques de marqueurs qui ignorent les minima moins profonds que h.


== Exemple

Trouver les minima etendus

``````matlab
I=[5 5 5 5 5;5 1 5 2 5;5 5 5 5 5];
BW=imextendedmin(I,2);
figure; subplot(1,2,1); imagesc(I); title('Image');
subplot(1,2,2); imagesc(BW); title('Minima etendus');
``````


#align(center)[#image("imextendedmin_1.png")]

== Voir aussi

#nlink(<image_processing:2_image_analysis.7_segmentation.imhmin>)[imhmin];, #nlink(<image_processing:2_image_analysis.7_segmentation.imregionalmin>)[imregionalmin];, #nlink(<image_processing:2_image_analysis.7_segmentation.imimposemin>)[imimposemin];, #nlink(<image_processing:2_image_analysis.7_segmentation.watershed>)[watershed];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
