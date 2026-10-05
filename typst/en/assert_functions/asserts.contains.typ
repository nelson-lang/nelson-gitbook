#import "nelson_help.typ": *

= asserts.contains <assert_functions:asserts.contains>

Check that text contains a pattern.

== Syntax

- #raw("asserts.contains(text, pattern)");
- #raw("[res, msg] = asserts.contains(text, pattern)");

== Input argument

/ text: Character vector or string scalar to test.
/ pattern: Expected text pattern.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when pattern is found in text.

 Use asserts.containsAll or asserts.containsAny for a list of patterns.


== Examples

Pattern present

``````matlab
asserts.contains('Nelson language', 'language');
``````

Capture a missing pattern

``````matlab
[res, msg] = asserts.contains('Nelson language', 'toolbox');
``````


== See also

#nlink(<assert_functions:asserts.containsAll>)[asserts.containsAll];, #nlink(<assert_functions:asserts.containsAny>)[asserts.containsAny];, #nlink(<assert_functions:asserts.match>)[asserts.match];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
