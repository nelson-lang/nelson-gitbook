#import "nelson_help.typ": *

= QObject\_get <qml_engine:QObject_get>

Retrieve a property value from an QObject handle.

== Syntax

- #raw("R = get(h, property_name)");

== Input argument

/ h: an QObject handle.
/ property\_name: a string: property name.

== Output argument

/ R: The data type of the return value depends on the invoked method.

== Description

#strong[R \= get(h, property\_name)]; returns the value of property asked.


== Example

``````matlab
h = errordlg();
h.visible % or get(h, 'visible')
h.windowTitle % or get(h, 'windowTitle')
``````


== See also

#nlink(<qml_engine:QObject_set>)[QObject\_set (set)];, #nlink(<handle:get>)[get];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
