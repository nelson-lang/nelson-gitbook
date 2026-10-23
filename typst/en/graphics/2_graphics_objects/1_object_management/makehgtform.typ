#import "../../nelson_help.typ": *

= makehgtform <graphics:2_graphics_objects.1_object_management.makehgtform>

Create a 4-by-4 transform matrix.

== Syntax

- #raw("M = makehgtform()");
- #raw("M = makehgtform('translate', [tx ty tz])");
- #raw("M = makehgtform('scale', s)");
- #raw("M = makehgtform('xrotate', r)");
- #raw("M = makehgtform('yrotate', r)");
- #raw("M = makehgtform('zrotate', r)");
- #raw("M = makehgtform(transform1, value1, transform2, value2, ...)");

== Input argument

/ 'translate': a three-element vector \[tx ty tz\]: a translation.
/ 'scale': a scalar or a three-element vector: a uniform or per-axis scaling.
/ 'xrotate', 'yrotate', 'zrotate': a scalar angle in radians: a rotation about that axis.

== Output argument

/ M: a 4-by-4 transformation matrix.

== Description

#strong[makehgtform]; builds a 4-by-4 transformation matrix from a sequence of translation, scaling and rotation transforms. The transforms are multiplied left to right, so the first one listed is applied last to a point. The result is suitable for the #strong[Matrix]; property of a transform object.


== Example

``````matlab
M = makehgtform('translate', [1 0 0], 'zrotate', pi / 2)
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.hggroup>)[hggroup];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
