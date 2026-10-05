#import "../../nelson_help.typ": *

= imgaussfilt3 <image_processing:3_geometry_registration_3d.8_volumes_3d.imgaussfilt3>

Filter a 3-D volume with a Gaussian kernel.

== Syntax

- #raw("B = imgaussfilt3(A)");
- #raw("B = imgaussfilt3(A, sigma)");
- #raw("B = imgaussfilt3(__, 'FilterSize', filterSize)");
- #raw("B = imgaussfilt3(__, 'Padding', pad)");
- #raw("B = imgaussfilt3(__, 'FilterDomain', domain)");

== Input argument

/ A: Numeric or logical 3-D volume. Complex numeric volumes are filtered by applying the same separable kernel to real and imaginary parts.
/ sigma: Standard deviation of the Gaussian kernel. It can be a positive scalar or a three-element vector. The default value is 0.5.
/ 'FilterSize': Odd positive scalar or three-element vector that specifies the kernel size. By default the size is derived from sigma.
/ 'Padding': Boundary handling mode: 'replicate', 'symmetric', 'circular', or a finite scalar fill value.
/ 'FilterDomain': Accepted for compatibility. The current implementation uses spatial separable convolution.

== Output argument

/ B: Filtered 3-D volume with the same size as A.

== Description

Filter a numeric or logical 3-D volume with a separable Gaussian kernel. Complex numeric volumes are supported by filtering real and imaginary parts consistently. Sigma can be scalar or a three-element vector. Padding can be replicate, symmetric, circular, or a finite scalar value.


== Example

Smooth a synthetic 3-D volume

``````matlab
V = zeros(21, 21, 9);
V(8:14, 8:14, 4:6) = 1;
B = imgaussfilt3(V, 1.0, 'FilterSize', [5 5 5], 'Padding', 0);
B(:, :, 5)
``````


== See also

#nlink(<image_processing:1_image_basics.3_filtering_edges.imgaussfilt>)[imgaussfilt];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imref3d>)[imref3d];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
