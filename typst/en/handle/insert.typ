#import "nelson_help.typ": *

= insert <handle:insert>

Insert entries into an object that supports keyed insertion.

== Syntax

- #raw("insert(obj, ...)");
- #raw("obj = insert(obj, ...)");

== Input argument

/ obj: object that implements keyed insertion.
/ key: key or array of keys to insert.
/ value: value or array of values associated with the keys.

== Output argument

/ obj: updated object when the concrete implementation returns one.

== Description

insert dispatches insertion to the object type passed as first argument.

 If the first argument does not implement insertion, Nelson reports that the function is not implemented for that type.


== Used function(s)

dictionary

== Example

Insert a value into a dictionary through the generic function.

``````matlab
d = dictionary(["one" "two"], [1 2]);
d = insert(d, "three", 3)
``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<handle:lookup>)[lookup];, #nlink(<handle:isKey>)[isKey];, #nlink(<handle:remove>)[remove];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
