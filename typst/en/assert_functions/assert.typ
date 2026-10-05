#import "nelson_help.typ": *

= assert <assert_functions:assert>

Check that a condition is true.

== Syntax

- #raw("assert(condition)");
- #raw("assert(condition, message)");
- #raw("assert(condition, message, value)");
- #raw("assert(condition, identifier, message)");
- #raw("assert(condition, identifier, message, value)");
- #raw("[res, msg] = assert(...)");

== Input argument

/ condition: Logical or real numeric scalar or array to test. Every entry must be nonzero.
/ message: Optional custom failure message. Format replacements are supported with following values.
/ identifier: Optional error identifier used when the assertion raises an error.
/ value: Optional value inserted in the message format.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: Assertion failure message, empty on success.

== Description

#strong[assert]; raises an error when condition is false and no output is requested.

 With outputs, assertion failures are returned as #strong[res]; and #strong[msg]; instead of being raised.

 Use the #strong[asserts]; package for qualified assertion helpers, for example #strong[asserts.isequal(...)];.


== Examples

Passing condition

``````matlab
assert(5 > 3);
``````

Custom message

``````matlab
[res, msg] = assert(false, 'condition failed');
``````

Formatted message

``````matlab
[res, msg] = assert(false, 'value %.2f', 1.234);
``````

Error identifier

``````matlab
[res, msg] = assert(false, 'Nelson:asserts:example', 'condition failed');
``````


== See also

#nlink(<assert_functions:asserts.istrue>)[asserts.istrue];, #nlink(<assert_functions:asserts.isfalse>)[asserts.isfalse];, #nlink(<assert_functions:asserts.isequal>)[asserts.isequal];, #nlink(<assert_functions:asserts.isapprox>)[asserts.isapprox];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [added formatted messages, error identifiers and output mode],
)

// Author: Allan CORNET
