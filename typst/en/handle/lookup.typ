#import "nelson_help.typ": *

= lookup <handle:lookup>

Look up values in an object.

== Syntax

- #raw("value = lookup(obj, ...)");
- #raw("[value, found] = lookup(obj, ...)");

== Input argument

/ obj: object that implements keyed value lookup.
/ key: key to look up.

== Output argument

/ value: value associated with the key.
/ found: logical value indicating whether the lookup succeeded, when returned by the object implementation.

== Description

lookup dispatches value lookup to the object type passed as first argument.

 If the first argument does not implement lookup, Nelson reports that the function is not implemented for that type.


== Used function(s)

dictionary

== Example

Look up a value in a dictionary through the generic function.

``````matlab
d = dictionary(["one" "two"], [1 2]);
value = lookup(d, "two")
``````


== See also

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<handle:isKey>)[isKey];, #nlink(<handle:insert>)[insert];, #nlink(<handle:remove>)[remove];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
