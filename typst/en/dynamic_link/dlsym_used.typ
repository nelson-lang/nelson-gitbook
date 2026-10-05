#import "nelson_help.typ": *

= dlsym\_used <dynamic_link:dlsym_used>

Returns the current valid dlsym handles.

== Syntax

- #raw("r = dlsym_used()");

== Output argument

/ h: a vector of dlsym handle.

== Description

Returns the current valid dlsym handles.


== Example

``````matlab
used = dlsym_used()
``````


== See also

#nlink(<dynamic_link:dlsym>)[dlsym];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
