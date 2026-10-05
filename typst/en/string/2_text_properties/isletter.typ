#import "../nelson_help.typ": *

= isletter <string:2_text_properties.isletter>

Determine which characters are letters.

== Syntax

- #raw("res = isletter(str)");

== Input argument

/ str: scalar, vector, matrix or multidimensional array.

== Output argument

/ res: logical array

== Description

#strong[isletter]; determines which characters are letters.


== Examples

``````matlab
isletter('Nel Son')
``````

``````matlab
isletter("六書 six writings")
``````


== See also

#nlink(<string:7_edit_text.toupper>)[toupper];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
