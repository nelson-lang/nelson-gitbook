#import "nelson_help.typ": *

= libpointer\_used <dynamic_link:libpointer_used>

Returns the current valid libpointer handles.

== Syntax

- #raw("r = libpointer_used()");

== Output argument

/ h: a vector of libpointer handle.

== Description

Returns the current valid libpointer handles.


== Example

``````matlab
used = libpointer_used()
``````


== See also

#nlink(<dynamic_link:dlcall>)[dlcall];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
