#import "nelson_help.typ": *

= ishandle <types:ishandle>

Return true if variable var is a handle object.

== Syntax

- #raw("res = ishandle(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[ishandle]; returns a logical 1 if the argument is a handle object and a logical 0 otherwise.
== Example

``````matlab
A = 3;
res = ishandle(A)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<handle:isvalid>)[isvalid];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
