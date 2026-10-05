#import "nelson_help.typ": *

= qml\_collectgarbage <qml_engine:qml_collectgarbage>

Runs the Qml garbage collector.

== Syntax

- #raw("qml_collectgarbage");

== Description

The garbage collector will attempt to reclaim memory by locating and disposing of objects that are no longer reachable in the script environment.


== Example

``````matlab
qml_collectgarbage()
``````


== See also

#nlink(<qml_engine:qml_clearcomponentcache>)[qml\_clearcomponentcache];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
