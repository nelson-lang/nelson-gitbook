#import "../nelson_help.typ": *

= int2str <string:1_create_convert_text.int2str>

Convert an integer array to a string

== Syntax

- #raw("res = int2str(var)");

== Input argument

/ var: an numeric array.

== Output argument

/ res: a string

== Description

#strong[int2str]; converts an numeric array to a string with integer format. Inputs are rounded before conversion.
== Examples

``````matlab
R = int2str ([-Inf, 2, NaN; 4, Inf, 6])
``````

``````matlab
R = int2str(uint64(intmax('uint64')))
``````


== See also

#nlink(<string:1_create_convert_text.char>)[char];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
