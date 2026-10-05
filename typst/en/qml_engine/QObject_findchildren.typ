#import "nelson_help.typ": *

= QObject\_findchildren <qml_engine:QObject_findchildren>

Returns all children of this object with the given name.

== Syntax

- #raw("hr = QObject_findchildren(h, objectName, recursive)");

== Input argument

/ h: an QObject handle.
/ objectName: a string.
/ recursive: a logical: true (The search is performed recursively).

== Output argument

/ hr: a vector of QObject handle.

== Description

Returns all children of this object with the given name.


== Example

``````matlab
h1 = errordlg()
h2 = errordlg()
hr = QObject_findchildren(QObject_root(), 'errordlg', true)
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
