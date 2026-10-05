#import "nelson_help.typ": *

= QObject\_root <qml_engine:QObject_root>

QObject root object.

== Syntax

- #raw("r = QObject_root()");

== Output argument

/ h: QObject handle of Nelson gui.

== Description

Returns QObject handle of Nelson gui.


== Example

``````matlab
h1 = QObject_root()
h1.windowTitle
h1.windowTitle = 'Your title'
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
