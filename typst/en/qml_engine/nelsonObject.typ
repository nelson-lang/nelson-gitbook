#import "nelson_help.typ": *

= nelsonObject <qml_engine:nelsonObject>

nelson object callable from QML.

== Syntax

- #raw("nelson.disp(msg)");
- #raw("nelson.evaluate(cmd)");
- #raw("nelson.processevent()");
- #raw("nelson.call(function_name)");
- #raw("nelson.call(function_name, arg1, ..., arg5)");

== Input argument

/ msg: a string.
/ cmd: a string.
/ function\_name: a string: nelson function name to call
/ arg1, ..., arg5: javascript variables

== Description

#strong[nelson]; object contains some methods used as callback to call nelson from QML


== See also

#nlink(<qml_engine:qml_pluginpathlist>)[qml\_pluginpathlist];, #nlink(<qml_engine:qml_addimportpath>)[qml\_addimportpath];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
