#import "nelson_help.typ": *

= asserts.istrue <assert_functions:asserts.istrue>

Check that a logical condition is true.

== Syntax

- #raw("asserts.istrue(condition)");
- #raw("asserts.istrue(condition, message)");
- #raw("[res, msg] = asserts.istrue(condition)");
- #raw("[res, msg] = asserts.istrue(condition, message)");

== Input argument

/ condition: Logical scalar or array to test. Every entry must be true.
/ message: Optional custom failure message.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

This is the method-style form of assert\_istrue.

 With no output, a failed assertion raises an error. With outputs, the function returns false and the failure message.


== Examples

Passing condition

``````matlab
asserts.istrue(3 > 2);
``````

Capture a failure

``````matlab
[res, msg] = asserts.istrue(false, 'condition failed');
``````


== See also

#nlink(<assert_functions:assert>)[assert];, #nlink(<assert_functions:asserts.isfalse>)[asserts.isfalse];, #nlink(<assert_functions:asserts.fail>)[asserts.fail];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
