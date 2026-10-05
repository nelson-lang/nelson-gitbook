#import "nelson_help.typ": *

= qt\_version <qml_engine:qt_version>

Returns Qt version used.

== Syntax

- #raw("v = qt_version()");

== Output argument

/ v: a string : valid path.

== Description

#strong[v \= qt\_version()]; returns the version number of Qt at run-time as a string (for example, "6.2.4").


== Example

``````matlab
semver(qt_version(), '>=6.2')
``````


== See also

#nlink(<modules_manager:semver>)[semver];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
