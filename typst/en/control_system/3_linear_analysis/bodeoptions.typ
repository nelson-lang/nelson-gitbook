#import "../nelson_help.typ": *

= bodeoptions <control_system:3_linear_analysis.bodeoptions>

Options for a Bode plot.

== Syntax

- #raw("opt = bodeoptions()");

== Output argument

/ opt: a structure holding the Bode plot options.

== Description

#strong[opt \= bodeoptions()]; returns a structure holding the Bode plot options with their default values.

 The returned structure can be passed to #strong[bodeplot]; to customize the rendering. The honored fields are:

 #strong[PhaseUnits];: #strong['deg']; (default) or #strong['rad'];.

 #strong[Grid];: #strong['off']; (default) or #strong['on'];.

 Additional fields (#strong[FreqUnits];, #strong[MagUnits];, #strong[Title];, #strong[XLabel];, #strong[YLabel];) are provided with default values so that assignment does not error.


== Example

``````matlab
opt = bodeoptions();
opt.PhaseUnits = 'rad';
opt.Grid = 'on'

``````


== See also

#nlink(<control_system:3_linear_analysis.bodeplot>)[bodeplot];, #nlink(<control_system:3_linear_analysis.bode>)[bode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
