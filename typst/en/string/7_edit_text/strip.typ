#import "../nelson_help.typ": *

= strip <string:7_edit_text.strip>

Remove leading and trailing characters from text.

== Syntax

- #raw("res = strip(str)");
- #raw("res = strip(str, side)");
- #raw("res = strip(str, side, stripCharacter)");

== Input argument

/ str: character array, string scalar, string array, or cell array of character vectors.
/ side: optional side selector: leading, trailing, left, right, or both when supported.
/ stripCharacter: optional character to remove instead of whitespace.

== Output argument

/ res: text with selected leading or trailing characters removed.

== Description

strip removes leading and trailing whitespace from text by default.

 Optional arguments can select a side and the character to remove when supported by the string module.


== Used function(s)

strtrim

== Example

Remove leading and trailing whitespace from a string.

``````matlab
txt = strip("  Nel Son  ")
``````


== See also

#nlink(<string:7_edit_text.strtrim>)[strtrim];, #nlink(<string:7_edit_text.deblank>)[deblank];, #nlink(<string:7_edit_text.lower>)[lower];, #nlink(<string:7_edit_text.upper>)[upper];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
