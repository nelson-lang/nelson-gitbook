#import "../nelson_help.typ": *

= lower <string:7_edit_text.lower>

Convert text to lowercase.

== Syntax

- #raw("res = lower(str)");

== Input argument

/ str: character array, string scalar, string array, or cell array of character vectors.

== Output argument

/ res: text converted to lowercase with the input shape preserved.

== Description

lower converts character arrays, strings, and string arrays to lowercase.

 The shape of the input text is preserved in the result.


== Example

Convert a string to lowercase.

``````matlab
txt = lower("NelSon")
``````


== See also

#nlink(<string:7_edit_text.upper>)[upper];, #nlink(<string:7_edit_text.tolower>)[tolower];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
