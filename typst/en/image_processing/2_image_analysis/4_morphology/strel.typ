#import "../../nelson_help.typ": *

= strel <image_processing:2_image_analysis.4_morphology.strel>

Create a structuring element.

== Syntax

- #raw("SE = strel(nhood)");
- #raw("SE = strel('arbitrary', nhood)");
- #raw("SE = strel(shape, size)");
- #raw("SE = strel('disk', radius, n)");
- #raw("SE = strel('diamond', radius)");
- #raw("SE = strel('octagon', radius)");
- #raw("SE = strel('line', len, deg)");
- #raw("SE = strel('cube', n)");
- #raw("SE = strel('cuboid', [m n p])");
- #raw("SE = strel('sphere', radius)");

== Input argument

/ nhood: Logical neighborhood for an arbitrary structuring element.
/ shape: Shape name: 'arbitrary', 'square', 'rectangle', 'line', 'disk', 'diamond', 'octagon', 'cube', 'cuboid', or 'sphere'.
/ size: Positive scalar or size vector used by square, rectangle, cube, or cuboid shapes.
/ radius: Nonnegative integer radius used by disk, diamond, octagon, and sphere shapes.
/ len: Positive integer length used by the line shape.
/ deg: Line angle in degrees.
/ n: Optional disk decomposition count, accepted as 0, 4, 6, or 8.

== Output argument

/ SE: Structuring element structure with type and nhood fields.

== Description

Create a flat structuring element. Supported 2-D shapes include arbitrary, square, rectangle, line, disk, diamond and octagon. Supported 3-D shapes include arbitrary, cube, cuboid and sphere. The optional disk decomposition count n can be 0, 4, 6 or 8; Nelson currently returns the exact disk neighborhood. The octagon radius must be a nonnegative multiple of 3.


== Examples

Display a structuring element

``````matlab
SE=strel('disk',8);
figure; imagesc(SE.nhood); g=linspace(0,1,64)'; colormap([g g g]); title('Structuring element');
``````


#align(center)[#image("strel_1.png")]
Create diamond and arbitrary neighborhoods

``````matlab
D = strel('diamond', 1);
A = strel([0 1 0; 1 1 1; 0 1 0])
``````

Create a 3-D sphere neighborhood

``````matlab
SE = strel('sphere', 1);
sum(SE.nhood(:))
``````


== See also

#nlink(<image_processing:2_image_analysis.4_morphology.imdilate>)[imdilate];, #nlink(<image_processing:2_image_analysis.4_morphology.imerode>)[imerode];, #nlink(<image_processing:2_image_analysis.4_morphology.imopen>)[imopen];, #nlink(<image_processing:2_image_analysis.4_morphology.imclose>)[imclose];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
