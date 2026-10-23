#import "../../nelson_help.typ": *

= imnoise <image_processing:1_image_basics.3_filtering_edges.imnoise>

Add noise to an image.

== Syntax

- #raw("B = imnoise(A, 'gaussian')");
- #raw("B = imnoise(A, 'gaussian', m, v)");
- #raw("B = imnoise(A, 'salt & pepper', d)");
- #raw("B = imnoise(A, 'speckle', v)");
- #raw("B = imnoise(A, 'poisson')");

== Input argument

/ A: Input image (double, single, uint8, uint16 or int16).
/ type: Noise type: 'gaussian', 'salt & pepper', 'speckle' or 'poisson'.
/ m, v, d: Mean\/variance (gaussian), variance (speckle) or density (salt & pepper).

== Output argument

/ B: Noisy image, same class as A.

== Description

#strong[imnoise]; adds noise of the chosen type to an image. The image is processed in double precision on the range \[0, 1\] and returned in the class of #strong[A];. Gaussian noise has mean #strong[m]; (default 0) and variance #strong[v]; (default 0.01); salt & pepper affects a fraction #strong[d]; (default 0.05) of the pixels; speckle is multiplicative noise #strong[B \= A + A.\*n]; with variance #strong[v]; (default 0.04); poisson draws Poisson-distributed values from the image intensities.


== Used function(s)

randn, poissrnd

== Example

``````matlab
A = 0.5 * ones(100, 100);
B = imnoise(A, 'gaussian', 0, 0.02);
``````


== See also

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imresize>)[imresize];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
