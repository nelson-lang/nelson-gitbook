#import "../../nelson_help.typ": *

= labelmatrix <image_processing:2_image_analysis.5_regions_boundaries.labelmatrix>

Cree une matrice d etiquettes depuis des composants connexes.

== Syntaxe

- #raw("L = labelmatrix(CC)");

== Argument d'entrée

/ CC: Structure de composantes connexes renvoyee par bwconncomp.

== Argument de sortie

/ L: Matrice d'etiquettes avec une etiquette positive par composante.

== Description

Cree une matrice d etiquettes depuis des composants connexes.


== Exemple

Afficher les etiquettes de composants

``````matlab
BW=false(64,64); BW(8:20,8:20)=true; BW(36:52,32:48)=true;
CC=bwconncomp(BW);
L=labelmatrix(CC);
figure; imagesc(L); title('Label matrix');
``````


#align(center)[#image("labelmatrix_1.png")]

== Voir aussi

#nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwconncomp>)[bwconncomp];, #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwlabel>)[bwlabel];, #nlink(<image_processing:2_image_analysis.5_regions_boundaries.regionprops>)[regionprops];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
