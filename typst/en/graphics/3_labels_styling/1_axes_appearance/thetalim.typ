#import "../../nelson_help.typ": *

= thetalim <graphics:3_labels_styling.1_axes_appearance.thetalim>

Set or get angular limits for polar axes.

== Syntax

- #raw("lims = thetalim()");
- #raw("thetalim([thetamin, thetamax])");
- #raw("thetalim('auto')");
- #raw("thetalim('manual')");
- #raw("m = thetalim('mode')");
- #raw("thetalim(ax, ...)");

== Input argument

/ \[thetamin, thetamax\]: Two-element vector of angular limits in degrees. The second value must be greater than the first value.
/ 'auto': Use automatic angular limits, currently \[0 360\].
/ 'manual': Keep the current angular limits.
/ 'mode': Return the angular limits mode.
/ ax: Target polar axes.

== Output argument

/ lims: Two-element vector of angular limits in degrees.
/ m: 'auto' or 'manual'.

== Description

#strong[thetalim]; gets or sets angular limits for the current polar axes. Unlike #strong[polarplot]; data angles, angular limits are expressed in degrees.

 Setting numeric angular limits switches angular limit mode to #strong[manual];.


== Example

Display only the upper half of a polar plot.

``````matlab

theta = linspace(0, pi, 100);
polarplot(theta, sin(theta));
thetalim([0 180]);
lims = thetalim()

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.thetaticks>)[thetaticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.thetaticklabels>)[thetaticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.rlim>)[rlim];, #nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
