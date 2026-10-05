#import "nelson_help.typ": *

= libpointer\_reshape <dynamic_link:libpointer_reshape>

Reshapes libpointer dimensions.

== Syntax

- #raw("tf = h.reshape(X, Y)");

== Input argument

/ h: a libpointer handle.
/ X: a scalar double: new X dimension.
/ Y: a scalar double: new Y dimension.

== Description

Set dimensions from libpointer object.


== Example

``````matlab
a = libpointer('doublePtr', eye(2, 2));
a.reshape(3, 3);
a.Value
``````


== See also

#nlink(<dynamic_link:libpointer>)[libpointer];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
