#import "../nelson_help.typ": *

= isstrprop <string:2_text_properties.isstrprop>

Determine character categories.

== Syntax

- #raw("R = isstrprop(...)");

== Description

#strong[isstrprop]; Determine character categories.


== Example

``````matlab
isstrprop("A1 ", "alpha")
``````


== See also

#nlink(<string:2_text_properties.isletter>)[isletter];, #nlink(<string:2_text_properties.isspace>)[isspace];, #nlink(<string:2_text_properties.isStringScalar>)[isStringScalar];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
