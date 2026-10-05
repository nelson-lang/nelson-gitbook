#import "nelson_help.typ": *

= max\_recursion\_depth <interpreter:max_recursion_depth>

Internal limit on the number of times a function may be called recursively.

== Syntax

- #raw("current_val = max_recursion_depth()");
- #raw("previous_val = max_recursion_depth(new_val)");

== Input argument

/ new\_val: a integer value: new value

== Output argument

/ current\_val: a integer value.
/ previous\_val: a integer value.

== Description

#strong[max\_recursion\_depth]; specifies the recursion depth max to prevent Nelson from recursing infinitely.


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
