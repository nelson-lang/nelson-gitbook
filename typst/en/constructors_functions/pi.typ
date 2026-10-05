#import "nelson_help.typ": *

= pi <constructors_functions:pi>

Ratio of circle's circumference to its diameter.

== Syntax

- #raw("pi");

== Description

#strong[pi]; returns the floating-point number nearest the value of #strong[π];.


== Examples

``````matlab
cos(pi)
``````

``````matlab
sin(pi)
``````

``````matlab
4*atan(1) == pi
``````


== See also

#nlink(<trigonometric_functions:cos>)[cos];, #nlink(<trigonometric_functions:sin>)[sin];, #nlink(<trigonometric_functions:atan>)[atan];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
