#import "../../nelson_help.typ": *

= rticks <graphics:3_labels_styling.1_axes_appearance.rticks>

Set or get radial tick values for polar axes.

== Syntax

- #raw("ticks = rticks()");
- #raw("rticks(values)");
- #raw("rticks('auto')");
- #raw("rticks('manual')");
- #raw("m = rticks('mode')");
- #raw("rticks(ax, ...)");

== Input argument

/ values: Numeric vector of radial tick values.
/ 'auto': Enable automatic radial tick selection and automatic radial tick labels.
/ 'manual': Keep current radial tick values.
/ 'mode': Return the radial tick mode.
/ ax: Target polar axes.

== Output argument

/ ticks: Numeric row vector of radial tick values.
/ m: 'auto' or 'manual'.

== Description

#strong[rticks]; gets or sets radial tick values on the current polar axes.

 Setting numeric tick values switches radial tick mode to #strong[manual];. If radial tick labels are in automatic mode, labels are regenerated from the new values.


== Example

Set radial ticks.

``````matlab

polarplot(linspace(0, 2*pi, 80), linspace(0, 4, 80));
rticks([0 1 2 3 4]);
ticks = rticks()

``````


== See also

#nlink(<graphics:3_labels_styling.1_axes_appearance.rticklabels>)[rticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.rlim>)[rlim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.thetaticks>)[thetaticks];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
