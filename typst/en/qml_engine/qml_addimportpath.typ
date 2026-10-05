#import "nelson_help.typ": *

= qml\_addimportpath <qml_engine:qml_addimportpath>

Adds path as directory where the qml engine searches for installed modules.

== Syntax

- #raw("qml_addimportpath(path)");

== Input argument

/ path: a string : valid path.

== Description

#strong[qml\_addimportpath]; adds#strong[path]; as a directory where the engine searches for installed modules in a URL-based directory structure.

 The newly added path will be first in#strong[qml\_importpathlist];.


== Example

``````matlab
qml_importpathlist()
qml_addimportpath(tempdir)
qml_importpathlist()

``````


== See also

#nlink(<qml_engine:qml_importpathlist>)[qml\_importpathlist];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
