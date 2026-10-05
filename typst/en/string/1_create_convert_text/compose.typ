#import "../nelson_help.typ": *

= compose <string:1_create_convert_text.compose>

Format data into multiple strings.

== Syntax

- #raw("R = compose(...)");

== Description

#strong[compose]; Format data into multiple strings.


== Example

``````matlab
compose("value = %0.2f", pi)
``````


== See also

#nlink(<string:1_create_convert_text.sprintf>)[sprintf];, #nlink(<string:1_create_convert_text.num2str>)[num2str];, #nlink(<string:1_create_convert_text.string>)[string];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
