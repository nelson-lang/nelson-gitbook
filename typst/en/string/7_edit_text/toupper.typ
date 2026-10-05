#import "../nelson_help.typ": *

= toupper <string:7_edit_text.toupper>

Upper case conversion.

== Syntax

- #raw("res = toupper(str)");

== Input argument

/ str: a row character array, a cell of strings or an string array.

== Output argument

/ res: a string upper case

== Description

#strong[toupper]; converts a string to upper case.


== Examples

``````matlab
toupper('NelSon')
``````

``````matlab
upper(["NelSon", "is", "open"])
``````


== See also

#nlink(<string:7_edit_text.tolower>)[tolower];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
