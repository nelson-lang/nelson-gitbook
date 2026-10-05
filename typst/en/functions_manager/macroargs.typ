#import "nelson_help.typ": *

= macroargs <functions_manager:macroargs>

Returns variables names of a function.

== Syntax

- #raw("[argOut, argIn] = macroarg(function_name)");

== Input argument

/ function\_name: a string: function name.

== Output argument

/ argOut: a cell with output arguments.
/ argIn: a cell with input arguments.

== Description

#strong[macroargs]; returns input and output variables used by the function.


== Example

``````matlab
[out_args, in_args] = macroarg('getfield')
[out_args, in_args] = macroarg('deal')
``````


== See also

#nlink(<functions_manager:which>)[which];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
