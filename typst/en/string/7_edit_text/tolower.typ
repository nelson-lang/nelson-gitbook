#import "../nelson_help.typ": *

= tolower <string:7_edit_text.tolower>

Lower case conversion.

== Syntax

- #raw("res = tolower(str)");

== Input argument

/ str: a row character array, a cell of strings or an string array.

== Output argument

/ res: lower case equivalent

== Description

#strong[tolower]; converts a string to lower case.


== Examples

``````matlab
tolower('NelSon')
``````

``````matlab
tolower(["NelSon", "is", "open"])
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
