#import "nelson_help.typ": *

= qml\_loadfile <qml_engine:qml_loadfile>

Load a QML file.

== Syntax

- #raw("h = qml_loadfile(filename)");

== Input argument

/ filename: a string: a QML filename.

== Output argument

/ h: a QObject handle.

== Description

Load a QML file

 It creates a QML component and load .qml file.


== Example

``````matlab
 % see examples in [nelsonroot(), '/modules/qml_engine/examples']
``````


== See also

#nlink(<qml_engine:qml_loadstring>)[qml\_loadstring];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
