#import "nelson_help.typ": *

= qt\_constant <qml_engine:qt_constant>

Returns Qt constant value.

== Syntax

- #raw("v = qt_constant(constant_name)");
- #raw("ce = qt_constant()");

== Input argument

/ constant\_name: a string: desired Qt constant.

== Output argument

/ v: a scalar integer value (Qt constant value).
/ ce: a cell with all constant name available.

== Description

#strong[v \= qt\_version(constant\_name)]; returns Qt constant value.


== Example

``````matlab
qt_constant('Qt.WindowModal')
c = qt_constant()
``````


== See also

#nlink(<qml_engine:qt_version>)[qt\_version];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
