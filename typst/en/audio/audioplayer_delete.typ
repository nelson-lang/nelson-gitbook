#import "nelson_help.typ": *

= audioplayer\_delete <audio:audioplayer_delete>

Removes audioplayer object.

== Syntax

- #raw("audioplayer_delete(h)");
- #raw("delete(h)");

== Input argument

/ h: a handle: an audioplayer object.

== Description

#strong[delete(h)]; releases audioplayer object.

 Do not forget to clear h afterward.


== Example

``````matlab
used = audioplayer_used()
``````


== See also

#nlink(<audio:audioplayer>)[audioplayer];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
