#import "nelson_help.typ": *

= QObject\_used <qml_engine:QObject_used>

Returns the current valid QObject handles.

== Syntax

- #raw("r = QObject_used()");

== Output argument

/ h: a vector of QObject handle.

== Description

Returns the current valid QObject handles.


== Example

``````matlab
used = QObject_used()
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
