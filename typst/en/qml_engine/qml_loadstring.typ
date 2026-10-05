#import "nelson_help.typ": *

= qml\_loadstring <qml_engine:qml_loadstring>

Load a QML string.

== Syntax

- #raw("h = qml_loadstring(str_to_eval)");

== Input argument

/ str\_to\_eval: a string.

== Output argument

/ h: a QObject handle.

== Description

Load a QML string

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
