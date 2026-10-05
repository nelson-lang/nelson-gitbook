#import "../nelson_help.typ": *

= reverse <string:7_edit_text.reverse>

Reverse characters in text.

== Syntax

- #raw("R = reverse(...)");

== Description

#strong[reverse]; Reverse characters in text.


== Example

``````matlab
reverse("abc")
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.fliplr>)[fliplr];, #nlink(<elementary_functions:7_indexing_dimensions.flip>)[flip];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
