#import "../nelson_help.typ": *

= isspace <string:2_text_properties.isspace>

Determine which characters are space.

== Syntax

- #raw("res = isspace(str)");

== Input argument

/ str: scalar, vector, matrix or multidimensional array.

== Output argument

/ res: logical array

== Description

#strong[isletter]; determines which characters are space characters.
== Examples

``````matlab
isspace('Nel Son')
``````

``````matlab
isspace("六書 six writings")
``````


== See also

#nlink(<string:2_text_properties.isletter>)[isletter];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [initial version],
)

// Author: Allan CORNET
