#import "nelson_help.typ": *

= asserts.alltrue <assert_functions:asserts.alltrue>

Check that every logical entry is true.

== Syntax

- #raw("asserts.alltrue(value)");
- #raw("[res, msg] = asserts.alltrue(value)");

== Input argument

/ value: Logical scalar or array.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when every logical entry is true.

 Non-logical inputs raise an argument error immediately.


== Examples

All true

``````matlab
asserts.alltrue([true true]);
``````

Capture a false entry

``````matlab
[res, msg] = asserts.alltrue([true false]);
``````


== See also

#nlink(<assert_functions:asserts.allfalse>)[asserts.allfalse];, #nlink(<assert_functions:asserts.istrue>)[asserts.istrue];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
