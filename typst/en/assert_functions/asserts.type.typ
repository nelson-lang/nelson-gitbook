#import "nelson_help.typ": *

= asserts.type <assert_functions:asserts.type>

Check that a value has one of the expected classes.

== Syntax

- #raw("asserts.type(value, expectedTypes)");
- #raw("[res, msg] = asserts.type(value, expectedTypes)");

== Input argument

/ value: Value to test.
/ expectedTypes: Class name or class name list as string array or cell of character vectors.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when class(value) is present in expectedTypes.

 The expected type list must not be empty.


== Examples

One of several classes

``````matlab
asserts.type(single(1), {'double', 'single'});
``````

Capture a type failure

``````matlab
[res, msg] = asserts.type(int32(1), {'double', 'single'});
``````


== See also

#nlink(<assert_functions:asserts.class>)[asserts.class];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
