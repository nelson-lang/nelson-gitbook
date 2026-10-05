#import "nelson_help.typ": *

= QObject\_iswindowtype <qml_engine:QObject_iswindowtype>

Returns true if the QObject is a window.

== Syntax

- #raw("R = QObject_iswindowtype(h)");

== Input argument

/ h: an QObject handle.

== Output argument

/ R: a logical.

== Description

Returns true if the QObject is a window; otherwise returns false.


== Example

``````matlab
h = errordlg()
r = QObject_iswindowtype(h)
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
