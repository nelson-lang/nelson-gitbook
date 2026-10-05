#import "nelson_help.typ": *

= asserts.class <assert_functions:asserts.class>

Check that a value has the expected class.

== Syntax

- #raw("asserts.class(value, expectedClass)");
- #raw("[res, msg] = asserts.class(value, expectedClass)");

== Input argument

/ value: Value to test.
/ expectedClass: Expected class name as a character vector or string scalar.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when class(value) matches expectedClass.

 Use asserts.type to accept one class among several allowed classes.


== Examples

Expected class

``````matlab
asserts.class(single(1), 'single');
``````

Capture a class failure

``````matlab
[res, msg] = asserts.class(int32(1), 'double');
``````


== See also

#nlink(<assert_functions:asserts.type>)[asserts.type];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
