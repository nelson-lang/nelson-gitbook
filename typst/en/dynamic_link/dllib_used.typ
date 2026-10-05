#import "nelson_help.typ": *

= dllib\_used <dynamic_link:dllib_used>

Returns the current valid dllib handles.

== Syntax

- #raw("r = dllib_used()");

== Output argument

/ h: a vector of dllib handle.

== Description

Returns the current valid dllib handles.


== Example

``````matlab
used = dllib_used()
``````


== See also

#nlink(<dynamic_link:dlopen>)[dlopen];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
