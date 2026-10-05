#import "nelson_help.typ": *

= asserts.sameSize <assert_functions:asserts.sameSize>

Check that two values have the same size.

== Syntax

- #raw("asserts.sameSize(left, right)");
- #raw("[res, msg] = asserts.sameSize(left, right)");

== Input argument

/ left: first value.
/ right: second value.

== Output argument

/ res: true if both values have the same size.
/ msg: the assertion failure message.

== Description

#strong[asserts.sameSize]; compares dimensions.


== Used function(s)

size

== Example

Check matching sizes:

``````matlab
asserts.sameSize(ones(2, 3), zeros(2, 3));
``````


== See also

#nlink(<assert_functions:asserts.size>)[asserts.size];, #nlink(<assert_functions:asserts.numel>)[asserts.numel];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
