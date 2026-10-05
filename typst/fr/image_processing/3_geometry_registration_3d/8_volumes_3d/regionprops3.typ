#import "../../nelson_help.typ": *

= regionprops3 <image_processing:3_geometry_registration_3d.8_volumes_3d.regionprops3>

Mesurer les proprietes de regions de volumes 3-D

== Syntaxe

- #raw("stats = regionprops3(BW)");
- #raw("stats = regionprops3(CC, properties)");
- #raw("stats = regionprops3(L, properties)");
- #raw("stats = regionprops3(regions, V, properties)");

== Argument d'entrée

/ regions: Volume logique 3-D, volume de labels entiers non negatifs 3-D, ou structure de composantes connexes issue de bwconncomp.
/ V: Volume d'intensite optionnel de meme taille que regions.
/ properties: Noms de proprietes, 'basic', 'all', ou tableau de cellules de noms de proprietes.

== Argument de sortie

/ stats: Tableau de structures contenant un element par region.

== Description

#strong[regionprops3]; mesure les regions connexes de volumes 3-D. Les proprietes geometriques prises en charge incluent Volume, Centroid, BoundingBox, VoxelIdxList, VoxelList, Image, SubarrayIdx, Extent et EquivDiameter.

 Lorsqu'un volume d'intensite est fourni, les proprietes d'intensite prises en charge incluent MeanIntensity, MinIntensity, MaxIntensity, VoxelValues et WeightedCentroid.


== Exemple

Mesurer des objets dans un volume synthetique et afficher une tranche labelisee.

``````matlab
[X, Y, Z] = meshgrid(1:48, 1:48, 1:20);
BW = ((X - 16) .^ 2 + (Y - 18) .^ 2 + (Z - 8) .^ 2) < 6 ^ 2;
BW = BW | (((X - 34) .^ 2 + (Y - 32) .^ 2 + (Z - 14) .^ 2) < 5 ^ 2);
S = regionprops3(BW, 'Volume', 'Centroid', 'BoundingBox');
L = labelmatrix(bwconncomp(BW));
figure;
imagesc(L(:, :, 10));
title('Measured volume regions');
``````


#align(center)[#image("regionprops3_1.png")]

== Voir aussi

#nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwconncomp>)[bwconncomp];, #nlink(<image_processing:2_image_analysis.5_regions_boundaries.regionprops>)[regionprops];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
