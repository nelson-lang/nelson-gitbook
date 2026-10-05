#import "nelson_help.typ": *

= asserts.isfalse <assert_functions:asserts.isfalse>

Check that a logical condition is false.

== Syntax

- #raw("asserts.isfalse(condition)");
- #raw("asserts.isfalse(condition, message)");
- #raw("[res, msg] = asserts.isfalse(condition)");
- #raw("[res, msg] = asserts.isfalse(condition, message)");

== Input argument

/ condition: Logical scalar or array to test. Every entry must be false.
/ message: Optional custom failure message.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

This is the method-style form of assert\_isfalse.

 With no output, a failed assertion raises an error. With outputs, the function returns false and the failure message.


== Examples

Passing condition

``````matlab
asserts.isfalse(3 < 2);
``````

Capture a failure

``````matlab
[res, msg] = asserts.isfalse(true, 'condition failed');
``````


== See also

#nlink(<assert_functions:asserts.istrue>)[asserts.istrue];, #nlink(<assert_functions:asserts.fail>)[asserts.fail];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
