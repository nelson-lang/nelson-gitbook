#import "../nelson_help.typ": *

= bodeplot <control_system:3_linear_analysis.bodeplot>

Bode plot of a SISO LTI system with plotting options.

== Syntax

- #raw("bodeplot(sys)");
- #raw("bodeplot(sys, opt)");
- #raw("bodeplot(sys, lineSpec)");
- #raw("bodeplot(sys, opt, lineSpec)");
- #raw("bodeplot(sys, w, ...)");
- #raw("[magnitude, phase, w] = bodeplot(...)");

== Input argument

/ sys: a SISO LTI model.
/ opt: an options structure returned by bodeoptions.
/ lineSpec: Line style, marker, and color.
/ w: a cell {wmin, wmax} or a frequency vector.

== Output argument

/ magnitude: Magnitude: size 1 x 1 x k (SISO).
/ phase: Phase: size 1 x 1 x k (SISO).
/ w: Frequencies: a vector: 1 x k.

== Description

#strong[bodeplot(sys)]; generates a Bode plot of the SISO LTI system #strong[sys];, like #strong[bode];.

 #strong[bodeplot(sys, opt)]; applies the plotting options described by #strong[opt]; (see #strong[bodeoptions];).

 When #strong[opt.PhaseUnits]; is #strong['rad'];, the phase is plotted in radians. When #strong[opt.Grid]; is #strong['on'];, a grid is displayed.

 A #strong[lineSpec]; character vector and a frequency specification #strong[w]; can also be provided, as with #strong[bode];.


== Example

``````matlab
G = tf([3], [1 1/2 4]);
opt = bodeoptions();
opt.PhaseUnits = 'rad';
opt.Grid = 'on';
f = figure();
bodeplot(G, opt, '--');

``````


#align(center)[#image("bodeplot_1.svg")]

== See also

#nlink(<control_system:3_linear_analysis.bode>)[bode];, #nlink(<control_system:3_linear_analysis.bodeoptions>)[bodeoptions];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
