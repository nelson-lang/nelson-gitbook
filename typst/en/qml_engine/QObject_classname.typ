#import "nelson_help.typ": *

= QObject\_classname <qml_engine:QObject_classname>

Returns class name of an QObject handle.

== Syntax

- #raw("s = QObject_classname(h)");

== Input argument

/ h: an QObject handle.

== Output argument

/ s: a string: class name.

== Description

Returns class name of an QObject handle.


== Example

``````matlab
h1 = QObject_root()
h1.className
QObject_classname(h1)
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
