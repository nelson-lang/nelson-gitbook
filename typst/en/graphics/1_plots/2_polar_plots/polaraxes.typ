#import "../../nelson_help.typ": *

= polaraxes <graphics:1_plots.2_polar_plots.polaraxes>

Create axes configured for polar plots.

== Syntax

- #raw("polaraxes()");
- #raw("polaraxes(propertyName, propertyValue, ...)");
- #raw("ax = polaraxes(...)");

== Input argument

/ propertyName: Axes property name: scalar string or row vector of characters.
/ propertyValue: Value assigned to the preceding axes property.

== Output argument

/ ax: Axes graphics object initialized for polar plotting.

== Description

#strong[polaraxes]; creates an axes object and initializes it for polar coordinate rendering.

 The polar state is stored on the axes and contains radial limits, angular limits, tick values, tick labels, grid handles, and plotted data handles.

 The axes remains an axes graphics object. Use #strong[polarplot]; to add polar data and use #strong[rlim];, #strong[rticks];, #strong[rticklabels];, #strong[thetalim];, #strong[thetaticks];, and #strong[thetaticklabels]; to customize polar decorations.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.polaraxes.properties>)[polaraxes properties]; for the complete property list.


== Example

Create a polar axes and plot into it.

``````matlab

ax = polaraxes();
theta = linspace(0, 2*pi, 80);
polarplot(ax, theta, 1 + sin(theta));
rlim(ax, [0 2]);

``````


#align(center)[#image("polaraxes_1.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.polaraxes.properties>)[polaraxes properties];, #nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot];, #nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];, #nlink(<graphics:3_labels_styling.1_axes_appearance.rlim>)[rlim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.thetalim>)[thetalim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
