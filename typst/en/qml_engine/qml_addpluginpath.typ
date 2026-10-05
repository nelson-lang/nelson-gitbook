#import "nelson_help.typ": *

= qml\_addpluginpath <qml_engine:qml_addpluginpath>

Adds path as directory where the qml engine searches for native plugins.

== Syntax

- #raw("qml_addpluginpath(path)");

== Input argument

/ path: a string : valid path.

== Description

#strong[qml\_addpluginpath]; adds#strong[path]; as a directory where the engine searches for native plugins.

 By default, the list contains only#strong[.];. The newly added path will be first in the #strong[qml\_pluginpathlist];.


== Example

``````matlab
qml_pluginpathlist()
qml_addpluginpath(tempdir)
qml_pluginpathlist()

``````


== See also

#nlink(<qml_engine:qml_pluginpathlist>)[qml\_pluginpathlist];, #nlink(<qml_engine:qml_addimportpath>)[qml\_addimportpath];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
