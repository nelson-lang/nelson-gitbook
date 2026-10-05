#import "nelson_help.typ": *

= buildhelpjson <help_tools:buildhelpjson>

Build help of Nelson JSON format.

== Syntax

- #raw("buildhelpjson()");

== Description

#strong[buildhelpjson]; generates help files (in JSON format) (internal feature).


== Example

``````matlab
buildhelpjson();
``````


== See also

#nlink(<help_tools:help>)[help];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
