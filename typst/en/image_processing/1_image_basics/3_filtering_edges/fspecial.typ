#import "../../nelson_help.typ": *

= fspecial <image_processing:1_image_basics.3_filtering_edges.fspecial>

Create predefined 2-D image filters.

== Syntax

- #raw("H = fspecial(type)");
- #raw("H = fspecial('average', hsize)");
- #raw("H = fspecial('disk', radius)");
- #raw("H = fspecial('gaussian', hsize, sigma)");

== Input argument

/ type: Filter family name: 'average', 'disk', 'gaussian', 'sobel', 'prewitt', 'laplacian', or 'log'.
/ hsize: Filter size for 'average', 'gaussian', and 'log'. It can be a scalar or a two-element vector of positive integers.
/ radius: Nonnegative disk radius used with type 'disk'.
/ sigma: Positive standard deviation used with type 'gaussian' or 'log'.
/ alpha: Finite scalar in the range \[0, 1\] used with type 'laplacian'.

== Output argument

/ H: Predefined 2-D filter kernel returned as a double matrix.

== Description

Create predefined 2-D image filters. Supported types include average, disk, gaussian, sobel, prewitt, laplacian and log.


== Example

Create and display a Gaussian filter

``````matlab
H=fspecial('gaussian',[21 21],3);
figure; imagesc(H); g=linspace(0,1,64)'; colormap([g g g]); title('Gaussian filter');
``````


#align(center)[#image("fspecial_1.png")]

== See also

#nlink(<image_processing:1_image_basics.3_filtering_edges.imfilter>)[imfilter];, #nlink(<image_processing:1_image_basics.3_filtering_edges.imgaussfilt>)[imgaussfilt];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
