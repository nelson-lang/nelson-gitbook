#import "nelson_help.typ": *

= assert\_isfalse <assert_functions:assert_isfalse>

Historical name for asserts.isfalse.

== Syntax

- #raw("assert_isfalse(condition)");
- #raw("assert_isfalse(condition, message)");
- #raw("[res, msg] = assert_isfalse(condition)");
- #raw("[res, msg] = assert_isfalse(condition, message)");

== Input argument

/ condition: Logical scalar or array to test. Every entry must be false.
/ message: Optional custom failure message.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: Assertion failure message, empty on success.

== Description

#strong[assert\_isfalse]; is kept for compatibility.

 For complete documentation, use #nlink(<assert_functions:asserts.isfalse>)[asserts.isfalse];.


== Examples

Historical call

``````matlab
assert_isfalse(3 == 4);
``````

Canonical call

``````matlab
asserts.isfalse(false);
``````


== See also

#nlink(<assert_functions:asserts.isfalse>)[asserts.isfalse];, #nlink(<assert_functions:assert>)[assert];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [documented as historical name for asserts.isfalse],
)

// Author: Allan CORNET
