#import "../../nelson_help.typ": *

= rlim <graphics:3_labels_styling.1_axes_appearance.rlim>

Set or get radial limits for polar axes.

== Syntax

- #raw("lims = rlim()");
- #raw("rlim([rmin, rmax])");
- #raw("rlim('auto')");
- #raw("rlim('manual')");
- #raw("m = rlim('mode')");
- #raw("rlim(ax, ...)");

== Input argument

/ \[rmin, rmax\]: Two-element vector. The second value must be greater than the first value.
/ 'auto': Enable automatic radial limit selection from plotted polar data.
/ 'manual': Keep the current radial limits until they are changed explicitly.
/ 'mode': Return the current radial limits mode.
/ ax: Target polar axes.

== Output argument

/ lims: Two-element vector: \[rmin, rmax\].
/ m: 'auto' or 'manual'.

== Description

#strong[rlim]; gets or sets the radial limits of the current polar axes.

 Setting numeric limits switches radial limit mode to #strong[manual];. Setting mode to #strong[auto]; recomputes limits when the polar axes is refreshed.


== Example

Set radial limits.

``````matlab

theta = linspace(0, 2*pi, 100);
polarplot(theta, 2 + sin(theta));
rlim([0 3]);
currentLimits = rlim()
currentMode = rlim('mode')

``````


== See also

#nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot];, #nlink(<graphics:1_plots.2_polar_plots.polaraxes>)[polaraxes];, #nlink(<graphics:3_labels_styling.1_axes_appearance.rticks>)[rticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.thetalim>)[thetalim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
