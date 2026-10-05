#import "nelson_help.typ": *

= username <os_functions:username>

get user name currently used.

== Syntax

- #raw("s = username()");

== Output argument

/ s: a char array: user name.

== Description

#strong[username]; get user name currently used.


== Example

``````matlab
username()
``````


== See also

#nlink(<os_functions:hostname>)[hostname];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
