#import "nelson_help.typ": *

= asserts.satisfies <assert_functions:asserts.satisfies>

Check a value with a custom predicate.

== Syntax

- #raw("asserts.satisfies(value, predicate)");
- #raw("[res, msg] = asserts.satisfies(value, predicate)");

== Input argument

/ value: Value passed as the only input to predicate.
/ predicate: Function handle or function name. It must return a scalar logical value.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when predicate(value) returns scalar logical true.

 Invalid predicates or non-logical predicate results raise an argument error immediately.


== Examples

Named predicate

``````matlab
asserts.satisfies(1, 'isnumeric');
``````

Function handle predicate

``````matlab
asserts.satisfies(1, @(x) isscalar(x));
``````

Capture predicate failure

``````matlab
[res, msg] = asserts.satisfies([1 2], @(x) isscalar(x));
``````


== See also

#nlink(<assert_functions:asserts.istrue>)[asserts.istrue];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
