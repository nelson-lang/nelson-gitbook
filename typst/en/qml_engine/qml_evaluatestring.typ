#import "nelson_help.typ": *

= qml\_evaluatestring <qml_engine:qml_evaluatestring>

Evaluates a js string.

== Syntax

- #raw("r = qml_evaluatestring(string_to_eval)");

== Input argument

/ string\_to\_eval: a string: a js code.

== Output argument

/ r: a double, logical, int or string.

== Description

Evaluates a js string.

 If returned value cannot be converted to a basic type, it will converted to string.


== Example

``````matlab
qml_evaluatestring('a = 2 + 4')
``````


== See also

#nlink(<qml_engine:qml_evaluatefile>)[qml\_evaluatefile];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
