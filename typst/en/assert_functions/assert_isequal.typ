#import "nelson_help.typ": *

= assert\_isequal <assert_functions:assert_isequal>

Historical name for asserts.isequal.

== Syntax

- #raw("assert_isequal(computed, expected)");
- #raw("assert_isequal(computed, expected, message)");
- #raw("res = assert_isequal(computed, expected)");
- #raw("[res, msg] = assert_isequal(computed, expected)");

== Input argument

/ computed: Computed value.
/ expected: Expected value.
/ message: Optional custom failure message.

== Output argument

/ res: true if values are equal, false otherwise.
/ msg: Assertion failure message, empty on success.

== Description

#strong[assert\_isequal]; is kept for compatibility.

 For complete documentation, use #nlink(<assert_functions:asserts.isequal>)[asserts.isequal];.


== Used function(s)

isequaln

== Examples

Historical call

``````matlab
assert_isequal([1 2], [1 2]);
``````

Canonical call

``````matlab
asserts.isequal([1 2], [1 2]);
``````


== See also

#nlink(<assert_functions:asserts.isequal>)[asserts.isequal];, #nlink(<elementary_functions:7_indexing_dimensions.isequaln>)[isequaln];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [documented as historical name for asserts.isequal],
)

// Author: Allan CORNET
