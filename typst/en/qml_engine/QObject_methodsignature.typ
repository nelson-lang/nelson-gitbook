#import "nelson_help.typ": *

= QObject\_methodsignature <qml_engine:QObject_methodsignature>

Returns the signature of a method of a QObject handle.

== Syntax

- #raw("res = QObject_methodsignature(h, method_name)");

== Input argument

/ h: an QObject handle.
/ method\_name: a string : method name.

== Output argument

/ R: a string: method signature.

== Description

Returns the signature of a method of a QObject handle.


== Example

``````matlab
h = errordlg()
QObject_methodsignature(h, 'setVisible')
``````


== See also

#nlink(<handle:invoke>)[QObject\_invoke (invoke)];, #nlink(<handle:methods>)[QObject\_methods (methods)];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
