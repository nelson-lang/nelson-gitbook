#import "nelson_help.typ": *

= asserts.hasField <assert_functions:asserts.hasField>

Check that a structure has a field.

== Syntax

- #raw("asserts.hasField(s, fieldName)");
- #raw("[res, msg] = asserts.hasField(s, fieldName)");

== Input argument

/ s: Structure value.
/ fieldName: Expected field name as a character vector or string scalar.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when s contains fieldName.

 Invalid non-structure inputs raise an argument error immediately.


== Examples

Existing field

``````matlab
S = struct('a', 1); asserts.hasField(S, 'a');
``````

Capture a missing field

``````matlab
S = struct('a', 1); [res, msg] = asserts.hasField(S, 'b');
``````


== See also

#nlink(<assert_functions:asserts.hasFields>)[asserts.hasFields];, #nlink(<assert_functions:asserts.fields>)[asserts.fields];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
