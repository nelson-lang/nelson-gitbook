#import "nelson_help.typ": *

= audioplayer\_used <audio:audioplayer_used>

Returns the current valid audioplayer handles.

== Syntax

- #raw("r = audioplayer_used()");

== Output argument

/ h: a vector of audioplayer handle.

== Description

Returns the current valid audioplayer handles.


== Example

``````matlab
used = audioplayer_used()
``````


== See also

#nlink(<audio:audioplayer_set>)[audioplayer\_set (set)];, #nlink(<audio:audioplayer_get>)[audioplayer\_get (get)];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
