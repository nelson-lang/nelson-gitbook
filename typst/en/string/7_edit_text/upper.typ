#import "../nelson_help.typ": *

= upper <string:7_edit_text.upper>

Convert text to uppercase.

== Syntax

- #raw("res = upper(str)");

== Input argument

/ str: character array, string scalar, string array, or cell array of character vectors.

== Output argument

/ res: text converted to uppercase with the input shape preserved.

== Description

upper converts character arrays, strings, and string arrays to uppercase.

 The shape of the input text is preserved in the result.


== Example

Convert a string to uppercase.

``````matlab
txt = upper("NelSon")
``````


== See also

#nlink(<string:7_edit_text.lower>)[lower];, #nlink(<string:7_edit_text.toupper>)[toupper];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
