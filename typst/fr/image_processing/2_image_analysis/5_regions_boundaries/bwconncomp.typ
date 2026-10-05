#import "../../nelson_help.typ": *

= bwconncomp <image_processing:2_image_analysis.5_regions_boundaries.bwconncomp>

Trouver les composantes connexes dans une image ou un volume binaire.

== Syntaxe

- #raw("CC = bwconncomp(BW)");
- #raw("CC = bwconncomp(BW, conn)");

== Argument d'entrée

/ BW: Image ou volume binaire. Une entree numerique est au premier plan lorsque ses valeurs sont non nulles.
/ conn: Connectivite. Utiliser 4 ou 8 pour les images 2-D, et 6, 18 ou 26 pour les volumes 3-D. La valeur par defaut est la connectivite maximale.

== Argument de sortie

/ CC: Structure de composantes connexes avec les champs Connectivity, ImageSize, NumObjects et PixelIdxList.

== Description

Trouver les composantes connexes de premier plan dans une image binaire 2-D ou un volume binaire 3-D.

 La structure renvoyee contient les champs Connectivity, ImageSize, NumObjects et PixelIdxList.


== Exemple

Trouver et afficher les composants connexes

``````matlab
BW=false(64,64); BW(8:20,8:20)=true; BW(36:52,32:48)=true;
CC=bwconncomp(BW);
L=labelmatrix(CC);
figure; imagesc(L); title('Connected components');
``````


#align(center)[#image("bwconncomp_1.png")]

== Voir aussi

#nlink(<image_processing:2_image_analysis.5_regions_boundaries.labelmatrix>)[labelmatrix];, #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwlabel>)[bwlabel];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
