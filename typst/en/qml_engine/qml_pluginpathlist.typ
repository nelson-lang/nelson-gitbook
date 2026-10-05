#import "nelson_help.typ": *

= qml\_pluginpathlist <qml_engine:qml_pluginpathlist>

Returns the list of directories where the engine searches for native plugins for imported modules.

== Syntax

- #raw("p = qml_pluginpathlist()");

== Output argument

/ p: a string: path.

== Description

Returns the list of directories where the engine searches for native plugins for imported modules.


== Example

``````matlab
qml_pluginpathlist()
``````


== See also

#nlink(<qml_engine:qml_addpluginpath>)[qml\_addpluginpath];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
