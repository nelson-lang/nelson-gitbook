#import "../../nelson_help.typ": *

= animatedline <graphics:1_plots.8_animation.animatedline>

Create animated line.

== Syntax

- #raw("an = animatedline()");
- #raw("an = animatedline(x, y)");
- #raw("an = animatedline(x, y, z)");
- #raw("an = animatedline(ax, ...)");
- #raw("an = animatedline(..., propertyName, propertyValue)");

== Input argument

/ x, y, z: numeric coordinates: scalars or arrays with the same number of elements.
/ ax: target axes or group object.
/ propertyName: a scalar string or character vector.
/ propertyValue: a property value.

== Output argument

/ an: a graphics object: animatedline type.

== Description

#strong[animatedline]; creates an animated line with no stored points.

 #strong[animatedline(x, y)]; creates an animated line initialized with two-dimensional coordinates.

 #strong[animatedline(x, y, z)]; creates an animated line initialized with three-dimensional coordinates.

 Use #strong[addpoints];, #strong[clearpoints];, and #strong[getpoints]; to mutate or query the stored coordinates.

 #strong[MaximumNumPoints]; limits the number of stored points. When the limit is reached, older points are discarded.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.animatedline.properties>)[animatedline properties]; for the complete property list.


== Example

``````matlab
f = figure();
ax = axes('Parent', f);
an = animatedline(ax, 'Color', [0 0.4 0.8], 'LineWidth', 2);
x = linspace(0, 2*pi, 120);
addpoints(an, x, sin(x));
drawnow
``````


== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.animatedline.properties>)[animatedline properties];, #nlink(<graphics:1_plots.8_animation.addpoints>)[addpoints];, #nlink(<graphics:1_plots.8_animation.clearpoints>)[clearpoints];, #nlink(<graphics:1_plots.8_animation.getpoints>)[getpoints];, #nlink(<graphics:1_plots.8_animation.comet>)[comet];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
