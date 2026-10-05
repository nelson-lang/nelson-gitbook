#import "../../nelson_help.typ": *

= labelmatrix <image_processing:2_image_analysis.5_regions_boundaries.labelmatrix>

Create label matrix from connected components.

== Syntax

- #raw("L = labelmatrix(CC)");

== Input argument

/ CC: Connected-component structure returned by bwconncomp.

== Output argument

/ L: Label matrix with one positive label per component.

== Description

Create label matrix from connected components.


== Example

Display connected component labels

``````matlab
BW=false(64,64); BW(8:20,8:20)=true; BW(36:52,32:48)=true;
CC=bwconncomp(BW);
L=labelmatrix(CC);
figure; imagesc(L); title('Label matrix');
``````


#align(center)[#image("labelmatrix_1.png")]

== See also

#nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwconncomp>)[bwconncomp];, #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwlabel>)[bwlabel];, #nlink(<image_processing:2_image_analysis.5_regions_boundaries.regionprops>)[regionprops];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
