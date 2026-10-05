#import "nelson_help.typ": *

= qml\_importpathlist <qml_engine:qml_importpathlist>

Returns the list of directories where the engine searches for installed modules in a URL-based directory structure.

== Syntax

- #raw("p = qml_importpathlist()");

== Output argument

/ p: a cell of strings: paths.

== Description

Returns the list of directories where the engine searches for installed modules in a URL-based directory structure.


== Example

``````matlab
qml_importpathlist()
``````


== See also

#nlink(<qml_engine:qml_addimportpath>)[qml\_addimportpath];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
