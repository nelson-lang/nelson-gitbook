#import "nelson_help.typ": *

= QObject\_undefine <qml_engine:QObject_undefine>

Undefine a dynamic property of a QObject handle.

== Syntax

- #raw("QObject_undefine(h, property_name)");

== Input argument

/ h: an QObject handle.
/ property\_name: a string : dynamic property name.

== Output argument

/ R: a string: method signature.

== Description

Undefine a dynamic property of a QObject handle.


== Example

``````matlab
h = errordlg()
set(h, 'myProp', 33)
h
get(h, 'myProp')
QObject_undefine(h, 'myProp')
get(h, 'myProp')
``````


== See also

#nlink(<qml_engine:QObject_set>)[QObject\_set (set)];, #nlink(<qml_engine:QObject_get>)[QObject\_get (get)];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
