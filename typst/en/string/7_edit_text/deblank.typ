#import "../nelson_help.typ": *

= deblank <string:7_edit_text.deblank>

Remove trailing whitespace.

== Syntax

- #raw("res = deblank(str)");

== Input argument

/ str: a string, a cell of strings or a string array.

== Output argument

/ res: a string without trailing whitespace.

== Description

#strong[deblank]; removes trailing whitespace.

 #strong[deblank]; does not remove all significant whitespace (only characters ' \\t\\n\\r\\f\\v' removed).


== Examples

``````matlab
deblank(' Nel Son ')
``````

``````matlab
deblank(" Nel Son ")
``````

``````matlab
deblank([' Nel Son ', char(160)])
``````


== See also

#nlink(<string:7_edit_text.strtrim>)[strtrim];, #nlink(<string:7_edit_text.toupper>)[toupper];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
