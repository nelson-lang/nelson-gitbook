#import "nelson_help.typ": *

= audiorecorder\_used <audio:audiorecorder_used>

Returns the current valid audiorecorder handles.

== Syntax

- #raw("r = audiorecorder_used()");

== Output argument

/ h: a vector of audiorecorder handle.

== Description

Returns the current valid audiorecorder handles.


== Example

``````matlab
used = audiorecorder_used()
``````


== See also

#nlink(<audio:audiorecorder_set>)[audiorecorder\_set (set)];, #nlink(<audio:audiorecorder_get>)[audiorecorder\_get (get)];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
