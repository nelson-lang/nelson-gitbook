#import "nelson_help.typ": *

= assert\_istrue <assert_functions:assert_istrue>

Historical name for asserts.istrue.

== Syntax

- #raw("assert_istrue(condition)");
- #raw("assert_istrue(condition, message)");
- #raw("[res, msg] = assert_istrue(condition)");
- #raw("[res, msg] = assert_istrue(condition, message)");

== Input argument

/ condition: Logical scalar or array to test. Every entry must be true.
/ message: Optional custom failure message.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: Assertion failure message, empty on success.

== Description

#strong[assert\_istrue]; is kept for compatibility.

 For complete documentation, use #nlink(<assert_functions:asserts.istrue>)[asserts.istrue];.


== Examples

Historical call

``````matlab
assert_istrue(3 == 3);
``````

Canonical call

``````matlab
asserts.istrue(true);
``````


== See also

#nlink(<assert_functions:asserts.istrue>)[asserts.istrue];, #nlink(<assert_functions:assert>)[assert];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [documented as historical name for asserts.istrue],
)

// Author: Allan CORNET
