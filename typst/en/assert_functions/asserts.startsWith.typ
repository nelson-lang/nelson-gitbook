#import "nelson_help.typ": *

= asserts.startsWith <assert_functions:asserts.startsWith>

Check that text starts with a prefix.

== Syntax

- #raw("asserts.startsWith(text, prefix)");
- #raw("[res, msg] = asserts.startsWith(text, prefix)");

== Input argument

/ text: Character vector or string scalar to test.
/ prefix: Expected prefix.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when text begins with prefix.

 With outputs, a missing prefix is returned as an assertion failure.


== Examples

Expected prefix

``````matlab
asserts.startsWith('Nelson language', 'Nelson');
``````

Capture a prefix failure

``````matlab
[res, msg] = asserts.startsWith('Nelson language', 'language');
``````


== See also

#nlink(<assert_functions:asserts.endsWith>)[asserts.endsWith];, #nlink(<assert_functions:asserts.contains>)[asserts.contains];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
