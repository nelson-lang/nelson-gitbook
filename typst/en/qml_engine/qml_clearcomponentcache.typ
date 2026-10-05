#import "nelson_help.typ": *

= qml\_clearcomponentcache <qml_engine:qml_clearcomponentcache>

Clears the engine's internal component cache..

== Syntax

- #raw("qml_clearcomponentcache");

== Description

This function causes the property metadata of all components previously loaded by the engine to be destroyed.

 All previously loaded components and the property bindings for all extant objects created from those components will cease to function.


== Example

``````matlab
qml_clearcomponentcache()
``````


== See also

#nlink(<qml_engine:qml_collectgarbage>)[qml\_collectgarbage];, #nlink(<qml_engine:qml_loadfile>)[qml\_loadfile];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
