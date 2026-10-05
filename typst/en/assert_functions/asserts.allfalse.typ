#import "nelson_help.typ": *

= asserts.allfalse <assert_functions:asserts.allfalse>

Check that every logical entry is false.

== Syntax

- #raw("asserts.allfalse(value)");
- #raw("[res, msg] = asserts.allfalse(value)");

== Input argument

/ value: Logical scalar or array.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when every logical entry is false.

 Non-logical inputs raise an argument error immediately.


== Examples

All false

``````matlab
asserts.allfalse([false false]);
``````

Capture a true entry

``````matlab
[res, msg] = asserts.allfalse([false true]);
``````


== See also

#nlink(<assert_functions:asserts.alltrue>)[asserts.alltrue];, #nlink(<assert_functions:asserts.isfalse>)[asserts.isfalse];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
