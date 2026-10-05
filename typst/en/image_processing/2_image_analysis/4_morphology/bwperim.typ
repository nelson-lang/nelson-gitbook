#import "../../nelson_help.typ": *

= bwperim <image_processing:2_image_analysis.4_morphology.bwperim>

Find perimeter pixels of binary objects.

== Syntax

- #raw("BW2 = bwperim(BW)");
- #raw("BW2 = bwperim(BW, conn)");

== Input argument

/ BW: Input binary image. Nonzero values are treated as true.
/ conn: Connectivity, either 4 or 8.

== Output argument

/ BW2: Logical image containing perimeter pixels.

== Description

Find perimeter pixels of binary objects. Supported connectivities are 4 and 8.


== Example

Find object perimeter

``````matlab
BW=false(64,64); BW(20:44,20:44)=true;
P=bwperim(BW);
figure; imagesc(P); g=linspace(0,1,64)'; colormap([g g g]); title('Perimeter');
``````


#align(center)[#image("bwperim_1.png")]

== See also

#nlink(<image_processing:2_image_analysis.4_morphology.bwmorph>)[bwmorph];, #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwboundaries>)[bwboundaries];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
