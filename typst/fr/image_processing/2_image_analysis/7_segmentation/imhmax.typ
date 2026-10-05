#import "../../nelson_help.typ": *

= imhmax <image_processing:2_image_analysis.7_segmentation.imhmax>

Supprime les maxima peu profonds avec la transformation h-maxima.

== Syntaxe

- #raw("J = imhmax(I, h)");
- #raw("J = imhmax(I, h, conn)");

== Argument d'entrée

/ I: Image 2-D reelle finie.
/ h: Hauteur finie non negative utilisee pour supprimer les maxima peu profonds.
/ conn: Connectivite, soit 4, 8, ou une matrice 3-by-3 equivalente.

== Argument de sortie

/ J: Image apres suppression h-maxima.

== Description

imhmax supprime les maxima moins profonds que h. Cette fonction aide a extraire des marqueurs de premier plan avant segmentation.


== Exemple

Supprimer un maximum peu profond

``````matlab
I=[1 1 1;1 5 1;1 1 1];
J=imhmax(I,2);
figure; subplot(1,2,1); imagesc(I); title('Entree');
subplot(1,2,2); imagesc(J); title('h-maxima');
``````


#align(center)[#image("imhmax_1.png")]

== Voir aussi

#nlink(<image_processing:2_image_analysis.7_segmentation.imextendedmax>)[imextendedmax];, #nlink(<image_processing:2_image_analysis.7_segmentation.imregionalmax>)[imregionalmax];, #nlink(<image_processing:2_image_analysis.7_segmentation.imhmin>)[imhmin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
