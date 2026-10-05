#import "nelson_help.typ": *

= audiorecorder\_delete <audio:audiorecorder_delete>

Removes audiorecorder object.

== Syntax

- #raw("audiorecorder_delete(h)");
- #raw("delete(h)");

== Input argument

/ h: a handle: an audiorecorder object.

== Description

#strong[delete(h)]; releases audiorecorder object.

 Do not forget to clear h afterward.


== Example

``````matlab
used = audiorecorder_used()
``````


== See also

#nlink(<audio:audiorecorder>)[audiorecorder];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
