#import "nelson_help.typ": *

= get <handle:get>

Retrieve a property value from an handle object.

== Syntax

- #raw("R = get(h, property_name)");

== Input argument

/ h: an handle object.
/ property\_name: a string: property name.

== Output argument

/ R: The data type of the return value depends on the invoked method.

== Description

#strong[R \= get(h, property\_name)]; returns the value of property asked.


== See also

#nlink(<qml_engine:QObject_get>)[QObject\_get (get)];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
