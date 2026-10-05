#import "nelson_help.typ": *

= libpointer\_delete <dynamic_link:libpointer_delete>

Removes libpointer object.

== Syntax

- #raw("libpointer_delete(h)");
- #raw("delete(h)");

== Input argument

/ h: a handle: an libpointer object.

== Description

#strong[delete(h)]; releases libpointer object.

 Do not forget to clear h afterward.


== Example

``````matlab
used = libpointer_used()
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
