#import "../../nelson_help.typ": *

= imboxfilt <image_processing:1_image_basics.3_filtering_edges.imboxfilt>

Apply box filtering to an image.

== Syntax

- #raw("B = imboxfilt(A)");
- #raw("B = imboxfilt(A, filterSize)");
- #raw("B = imboxfilt(__, 'Padding', pad)");
- #raw("B = imboxfilt(__, 'NormalizationFactor', factor)");

== Input argument

/ A: 2-D numeric\/logical image or RGB image.
/ filterSize: Positive integer scalar or two-element vector. The default value is \[3 3\].
/ 'Padding': Padding method or finite scalar fill value passed to imfilter. The default value is replicate.
/ 'NormalizationFactor': Finite numeric scalar multiplied by the box kernel. The default value computes a local mean.

== Output argument

/ B: Box-filtered image.

== Description

Apply box filtering to an image. FilterSize must contain positive integers. By default the filter computes a local mean with replicate padding. Set NormalizationFactor to 1 to compute local sums.


== Examples

Apply box filtering

``````matlab
I=peaks(64);
J=imboxfilt(I,[5 5]);
figure; subplot(1,2,1); imagesc(I); title('Input');
subplot(1,2,2); imagesc(J); title('Box filtered');
``````


#align(center)[#image("imboxfilt_1.png")]
Compute local sums with zero padding

``````matlab
A = [1 2; 3 4];
S = imboxfilt(A, [2 2], 'Padding', 0, 'NormalizationFactor', 1)
``````


== See also

#nlink(<image_processing:1_image_basics.3_filtering_edges.imgaussfilt>)[imgaussfilt];, #nlink(<image_processing:1_image_basics.3_filtering_edges.imfilter>)[imfilter];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
