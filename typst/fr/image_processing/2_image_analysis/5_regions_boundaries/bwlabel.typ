#import "../../nelson_help.typ": *

= bwlabel <image_processing:2_image_analysis.5_regions_boundaries.bwlabel>

Etiquette les composants connexes d une image binaire.

== Syntaxe

- #raw("L = bwlabel(BW)");
- #raw("L = bwlabel(BW, conn)");
- #raw("[L, num] = bwlabel(...)");

== Argument d'entrée

/ BW: Image binaire d'entree. Les valeurs non nulles sont traitees comme true.
/ conn: Connectivite transmise a bwconncomp.

== Argument de sortie

/ L: Matrice d'etiquettes avec une etiquette positive par composante connexe.
/ num: Nombre de composantes connexes.

== Description

Etiquette les composants connexes d une image binaire.


== Exemple

Etiqueter les composants connexes

``````matlab
BW=false(64,64); BW(8:20,8:20)=true; BW(36:52,32:48)=true;
L=bwlabel(BW);
figure; imagesc(L); title('Labels');
``````


#align(center)[#image("bwlabel_1.png")]

== Voir aussi

#nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwconncomp>)[bwconncomp];, #nlink(<image_processing:2_image_analysis.5_regions_boundaries.labelmatrix>)[labelmatrix];, #nlink(<image_processing:2_image_analysis.5_regions_boundaries.regionprops>)[regionprops];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
