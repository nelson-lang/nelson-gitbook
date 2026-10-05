#import "nelson_help.typ": *

= QObject\_iswidgettype <qml_engine:QObject_iswidgettype>

Returns true if the QObject is a widget.

== Syntax

- #raw("R = QObject_iswidgettype(h)");

== Input argument

/ h: an QObject handle.

== Output argument

/ R: a logical.

== Description

Returns true if the QObject is a widget; otherwise returns false.


== Example

``````matlab
h = errordlg()
r = QObject_iswidgettype(h)
``````


== See also

#nlink(<qml_engine:QObject_set>)[QObject\_set (set)];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
