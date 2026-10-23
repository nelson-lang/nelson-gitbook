#import "../../nelson_help.typ": *

= hgtransform <graphics:2_graphics_objects.1_object_management.hgtransform>

Create transform object.

== Syntax

- #raw("h = hgtransform()");
- #raw("h = hgtransform(..., propertyName, propertyValue, ...)");
- #raw("h = hgtransform(ax, ...)");

== Input argument

/ ax: graphics object: axes, hggroup or hgtransform.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ h: a graphics object of type: hgtransform

== Description

#strong[hgtransform]; creates a transform object as a child of the current axes and returns its handle, h.

 A transform object groups graphics objects, like an #strong[hggroup];, and in addition applies its #strong[Matrix]; property, a 4-by-4 homogeneous transformation matrix, to all of its children. The transformation also propagates to nested transform objects, so a transform placed under another transform is affected by both matrices.

 Build the #strong[Matrix]; value with #nlink(<graphics:2_graphics_objects.1_object_management.makehgtform>)[makehgtform];. Setting the #strong[Matrix]; property translates, rotates or scales the whole group at once, which makes transform objects convenient for animation.

 The default #strong[Matrix]; is the 4-by-4 identity matrix (no transformation).


== Examples

``````matlab
figure();
ax = gca();
t = hgtransform('Parent', ax);
line([0 1 1 0 0], [0 0 1 1 0], 'Parent', t, 'Color', 'r');
t.Matrix = makehgtform('zrotate', pi / 6);
axis equal

``````

nested transforms rotated independently

``````matlab
figure();
x = linspace(0, 4 * pi, 200);
root = hgtransform();
for i = 1:12
  t = hgtransform('Parent', root);
  line(x, 1 / 3 * x .* sin(x + i / 2), 'Parent', t, 'Color', 'y');
  set(t, 'Matrix', makehgtform('zrotate', 2 * pi * i / 12));
end
axis equal
axis(12 * [-1 1 -1 1])
set(root, 'Matrix', makehgtform('zrotate', pi / 4));

``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.makehgtform>)[makehgtform];, #nlink(<graphics:2_graphics_objects.1_object_management.hggroup>)[hggroup];, #nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
