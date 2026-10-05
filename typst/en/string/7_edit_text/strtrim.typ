#import "../nelson_help.typ": *

= strtrim <string:7_edit_text.strtrim>

Remove leading and trailing whitespace.

== Syntax

- #raw("res = strtrim(str)");

== Input argument

/ str: a string, a cell of strings or a string array.

== Output argument

/ res: a string without leading or trailing whitespace.

== Description

#strong[strtrim]; removes leading and trailing whitespace.

 #strong[strtrim]; does not remove all significant whitespace (only characters ' \\t\\n\\r\\f\\v' removed).


== Examples

``````matlab
strtrim(' Nel Son')
``````

``````matlab
strtrim(" Nel Son")
``````

``````matlab
strtrim([' Nel Son', char(160)])
``````


== See also

#nlink(<string:7_edit_text.deblank>)[deblank];, #nlink(<string:7_edit_text.toupper>)[toupper];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
