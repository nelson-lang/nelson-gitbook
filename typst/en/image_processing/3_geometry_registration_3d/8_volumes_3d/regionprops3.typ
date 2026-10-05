#import "../../nelson_help.typ": *

= regionprops3 <image_processing:3_geometry_registration_3d.8_volumes_3d.regionprops3>

Measure properties of 3-D volume regions

== Syntax

- #raw("stats = regionprops3(BW)");
- #raw("stats = regionprops3(CC, properties)");
- #raw("stats = regionprops3(L, properties)");
- #raw("stats = regionprops3(regions, V, properties)");

== Input argument

/ regions: 3-D logical volume, 3-D nonnegative integer label volume, or connected-component structure from bwconncomp.
/ V: Optional intensity volume with the same size as regions.
/ properties: Property names, 'basic', 'all', or a cell array of property names.

== Output argument

/ stats: Structure array containing one element per region.

== Description

#strong[regionprops3]; measures connected regions in 3-D volumes. Supported geometric properties include Volume, Centroid, BoundingBox, VoxelIdxList, VoxelList, Image, SubarrayIdx, Extent, and EquivDiameter.

 When an intensity volume is provided, supported intensity properties include MeanIntensity, MinIntensity, MaxIntensity, VoxelValues, and WeightedCentroid.


== Example

Measure objects in a synthetic volume and display one labeled slice.

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

== See also

#nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwconncomp>)[bwconncomp];, #nlink(<image_processing:2_image_analysis.5_regions_boundaries.regionprops>)[regionprops];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
