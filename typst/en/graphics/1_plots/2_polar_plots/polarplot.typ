#import "../../nelson_help.typ": *

= polarplot <graphics:1_plots.2_polar_plots.polarplot>

Plot data in polar coordinates.

== Syntax

- #raw("polarplot(rho)");
- #raw("polarplot(theta, rho)");
- #raw("polarplot(theta, rho, LineSpec)");
- #raw("polarplot(..., propertyName, propertyValue, ...)");
- #raw("polarplot(ax, ...)");
- #raw("go = polarplot(...)");

== Input argument

/ theta: Angles in radians: vector or matrix.
/ rho: Radial coordinates: real numeric vector or matrix.
/ LineSpec: Line style, marker, and\/or color: character vector or scalar string.
/ propertyName: Line property name: scalar string or row vector of characters.
/ propertyValue: Value assigned to the preceding line property.
/ ax: Target polar axes or axes object. A regular axes is initialized as a polar axes.

== Output argument

/ go: Column vector of line graphics objects.

== Description

#strong[polarplot(theta, rho)]; plots radius values #strong[rho]; at angles #strong[theta];. Data angles are expressed in radians.

 #strong[polarplot(rho)]; plots #strong[rho]; versus angles equally spaced from 0 to 2\*pi. If #strong[rho]; is complex, #strong[angle(rho)]; is used as angle data and #strong[abs(rho)]; as radius data.

 If #strong[rho]; is a matrix, each column is plotted as a separate line. A vector #strong[theta]; can be combined with a matrix #strong[rho]; when its length matches one dimension of #strong[rho];.

 The returned line objects keep polar samples in their #strong[ThetaData]; and #strong[RData]; properties. Cartesian #strong[XData]; and #strong[YData]; are managed by the polar renderer.

 Axis limit and tick helper functions use degrees for angular values: #strong[thetalim];, #strong[thetaticks];, and #strong[thetaticklabels];.

 When no polar axes is current, #strong[polarplot]; creates one. If a regular axes is supplied, it is initialized as a polar axes.


== Examples

Plot a polar curve with a line specification.

``````matlab

theta = linspace(0, 2*pi, 200);
rho = 1 + 0.5*cos(4*theta);
polarplot(theta, rho, 'r-', 'LineWidth', 2);

``````


#align(center)[#image("polarplot_1.svg")]
Plot several radius columns on the same polar axes.

``````matlab

theta = linspace(0, 2*pi, 100)';
rho = [sin(theta).^2, cos(theta).^2];
go = polarplot(theta, rho);
rticks([0 0.5 1]);
thetaticks(0:45:360);

``````

Use an explicit polar axes.

``````matlab

f = figure();
ax = polaraxes('Parent', f);
polarplot(ax, linspace(0, pi, 50), linspace(0, 2, 50), 'o-');
rlim(ax, [0 2]);
thetalim(ax, [0 180]);

``````


== See also

#nlink(<graphics:1_plots.2_polar_plots.polaraxes>)[polaraxes];, #nlink(<graphics:3_labels_styling.1_axes_appearance.rlim>)[rlim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.rticks>)[rticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.thetalim>)[thetalim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.thetaticks>)[thetaticks];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
