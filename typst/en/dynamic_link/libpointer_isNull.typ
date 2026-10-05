#import "nelson_help.typ": *

= libpointer\_isNull <dynamic_link:libpointer_isNull>

Checks if libpointer handle points on NULL pointer.

== Syntax

- #raw("tf = isNull(h)");
- #raw("tf = h.isNull()");

== Input argument

/ h: a libpointer handle.

== Output argument

/ tf: a logical.

== Description

Checks if libpointer handle points on NULL pointer.


== Example

``````matlab
p = libpointer('int8Ptr', int8([3 4]));
p.isNull()
p2 = libpointer()
p2.isNull()
isNull(p2)
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
