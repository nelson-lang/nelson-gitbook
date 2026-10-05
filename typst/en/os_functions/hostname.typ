#import "nelson_help.typ": *

= hostname <os_functions:hostname>

get host name of this computer.

== Syntax

- #raw("s = hostname()");

== Output argument

/ s: a char array: host name.

== Description

#strong[hostname]; get host name of this computer.


== Example

``````matlab
hostname()
``````


== See also

#nlink(<os_functions:username>)[username];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
