#import "../../nelson_help.typ": *

= imgaussfilt <image_processing:1_image_basics.3_filtering_edges.imgaussfilt>

Apply Gaussian filtering to an image.

== Syntax

- #raw("B = imgaussfilt(A)");
- #raw("B = imgaussfilt(A, sigma)");
- #raw("B = imgaussfilt(__, 'FilterSize', filterSize)");
- #raw("B = imgaussfilt(__, 'Padding', pad)");
- #raw("B = imgaussfilt(__, 'FilterDomain', domain)");

== Input argument

/ A: 2-D grayscale, RGB, or RGBA numeric or logical image.
/ sigma: Positive finite scalar or 2-element vector. The default value is 0.5.
/ FilterSize: Positive odd scalar or 2-element vector. If omitted, it is derived from sigma.
/ Padding: Padding mode: 'replicate', 'symmetric', 'circular', or a finite scalar.
/ FilterDomain: Accepted values are 'auto', 'spatial', and 'frequency'. Filtering is computed in the spatial domain.

== Output argument

/ B: Filtered image. The output preserves the input class for common image classes.

== Description

Apply Gaussian filtering to a 2-D image or to each plane of an RGB\/RGBA image.

 Sigma values must be positive and FilterSize must contain positive odd integers.

 The supported options are FilterSize, Padding, and FilterDomain.


== Examples

Apply Gaussian filtering

``````matlab
I=peaks(64);
J=imgaussfilt(I,1.5);
figure; subplot(1,2,1); imagesc(I); title('Input');
subplot(1,2,2); imagesc(J); title('Gaussian filtered');
``````


#align(center)[#image("imgaussfilt_1.png")]
Specify filter size and padding

``````matlab
A = [1 2; 3 4];
B = imgaussfilt(A, 0.5, 'FilterSize', [3 3], 'Padding', 0)
``````


== See also

#nlink(<image_processing:1_image_basics.3_filtering_edges.imfilter>)[imfilter];, #nlink(<image_processing:1_image_basics.3_filtering_edges.fspecial>)[fspecial];, #nlink(<image_processing:1_image_basics.3_filtering_edges.imboxfilt>)[imboxfilt];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
