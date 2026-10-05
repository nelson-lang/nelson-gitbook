#import "nelson_help.typ": *

= asserts.empty <assert_functions:asserts.empty>

Check that a value is empty.

== Syntax

- #raw("asserts.empty(value)");
- #raw("[res, msg] = asserts.empty(value)");

== Input argument

/ value: Value to test.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when value has no elements.

 Diagnostics include the computed dimensions.


== Examples

Empty value

``````matlab
asserts.empty([]);
``````

Capture a non-empty value

``````matlab
[res, msg] = asserts.empty(1);
``````


== See also

#nlink(<assert_functions:asserts.notempty>)[asserts.notempty];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
