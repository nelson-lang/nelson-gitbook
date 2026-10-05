#import "nelson_help.typ": *

= abort <interpreter:abort>

stop evaluation.

== Syntax

- #raw("abort");
- #raw("return");

== Description

#strong[return]; or #strong[abort]; stops current evaluation.


== Example

``````matlab
for i=1:10,a = i,abort,end
a
``````


== See also

#nlink(<interpreter:for>)[for];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
