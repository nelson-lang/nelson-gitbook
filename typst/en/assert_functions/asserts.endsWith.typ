#import "nelson_help.typ": *

= asserts.endsWith <assert_functions:asserts.endsWith>

Check that text ends with a suffix.

== Syntax

- #raw("asserts.endsWith(text, suffix)");
- #raw("[res, msg] = asserts.endsWith(text, suffix)");

== Input argument

/ text: Character vector or string scalar to test.
/ suffix: Expected suffix.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when text ends with suffix.

 With outputs, a missing suffix is returned as an assertion failure.


== Examples

Expected suffix

``````matlab
asserts.endsWith('Nelson language', 'language');
``````

Capture a suffix failure

``````matlab
[res, msg] = asserts.endsWith('Nelson language', 'Nelson');
``````


== See also

#nlink(<assert_functions:asserts.startsWith>)[asserts.startsWith];, #nlink(<assert_functions:asserts.contains>)[asserts.contains];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
