#import "../../nelson_help.typ": *

= thetaticks <graphics:3_labels_styling.1_axes_appearance.thetaticks>

Set or get angular tick values for polar axes.

== Syntax

- #raw("ticks = thetaticks()");
- #raw("thetaticks(values)");
- #raw("thetaticks('auto')");
- #raw("thetaticks('manual')");
- #raw("m = thetaticks('mode')");
- #raw("thetaticks(ax, ...)");

== Input argument

/ values: Numeric vector of angular tick values in degrees.
/ 'auto': Enable automatic angular tick selection and automatic angular tick labels.
/ 'manual': Keep current angular tick values.
/ 'mode': Return the angular tick mode.
/ ax: Target polar axes.

== Output argument

/ ticks: Numeric row vector of angular tick values in degrees.
/ m: 'auto' or 'manual'.

== Description

#strong[thetaticks]; gets or sets angular tick values on the current polar axes. Tick values are expressed in degrees.

 Setting numeric tick values switches angular tick mode to #strong[manual];. If angular tick labels are in automatic mode, labels are regenerated from the new values.


== Example

Set angular ticks.

``````matlab

polarplot(linspace(0, 2*pi, 80), ones(1, 80));
thetaticks(0:45:360);
ticks = thetaticks()

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.thetaticklabels>)[thetaticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.thetalim>)[thetalim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.rticks>)[rticks];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
