#import "nelson_help.typ": *

= asserts.numel <assert_functions:asserts.numel>

Check the number of elements of a value.

== Syntax

- #raw("asserts.numel(value, n)");
- #raw("[res, msg] = asserts.numel(value, n)");

== Input argument

/ value: value to test.
/ n: expected number of elements.

== Output argument

/ res: true if the value has n elements.
/ msg: the assertion failure message.

== Description

#strong[asserts.numel]; checks the number of elements.


== Used function(s)

numel

== Example

Check element count:

``````matlab
asserts.numel(ones(2, 3), 6);
``````


== See also

#nlink(<assert_functions:asserts.size>)[asserts.size];, #nlink(<assert_functions:asserts.sameSize>)[asserts.sameSize];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
