#import "../../nelson_help.typ": *

= axescheck <graphics:2_graphics_objects.1_object_management.axescheck>

Extract an axes handle from an argument list.

== Syntax

- #raw("[ax, args, nargs] = axescheck(arg1, arg2, ...)");

== Input argument

/ arg1, arg2, ...: an argument list, as passed to a plotting function.

== Output argument

/ ax: the axes handle found in the list, or #strong[\[\]]; if none was given.
/ args: the remaining arguments, as a cell array.
/ nargs: the number of remaining arguments, #strong[numel(args)];.

== Description

#strong[axescheck]; is a helper for plotting functions. It returns a leading axes handle in #strong[ax]; (or #strong[\[\]]; when the first argument is not an axes), with the remaining arguments in #strong[args];. A #strong['Parent'];, value pair anywhere in the list also supplies the axes and is removed from #strong[args];.


== Example

``````matlab
ax = axes();
[cax, args, nargs] = axescheck(ax, 1, 2)
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca];, #nlink(<graphics:2_graphics_objects.1_object_management.isgraphics>)[isgraphics];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
