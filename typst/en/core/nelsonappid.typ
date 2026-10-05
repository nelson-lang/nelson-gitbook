#import "nelson_help.typ": *

= nelsonappid <core:nelsonappid>

Returns nelson application ID

== Syntax

- #raw("nelsonappid()");

== Description

Get the unique identifier for the Nelson application.


== Example

``````matlab
nelsonappid()
``````


== See also

#nlink(<core:nelsonroot>)[nelsonroot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [initial version],
)

// Author: Allan CORNET
