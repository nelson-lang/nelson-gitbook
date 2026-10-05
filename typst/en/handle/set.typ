#import "nelson_help.typ": *

= set <handle:set>

Set a property value of an handle object.

== Syntax

- #raw("R = set(h, property_name, value)");

== Input argument

/ h: an handle object.
/ property\_name: a string: property name.
/ value: a variable.

== Output argument

/ R: user-settable properties and possible values for the object identified by h.

== Description

This routine can be used to modify the value of a specified property from an handle object.


== See also

#nlink(<qml_engine:QObject_set>)[QObject\_set (set)];, #nlink(<handle:get>)[get];, #nlink(<handle:invoke>)[invoke];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
