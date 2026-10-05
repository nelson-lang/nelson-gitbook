#import "nelson_help.typ": *

= asserts.containsAll <assert_functions:asserts.containsAll>

Check that text contains all expected patterns.

== Syntax

- #raw("asserts.containsAll(text, patterns)");
- #raw("[res, msg] = asserts.containsAll(text, patterns)");

== Input argument

/ text: Character vector or string scalar to test.
/ patterns: Character vector, string scalar, string array or cell of character vectors. Every pattern must be present.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when every pattern is found in text.

 Use asserts.containsAny when one matching pattern is enough.


== Examples

All patterns present

``````matlab
asserts.containsAll('Nelson language', {'Nelson', 'language'});
``````

Capture a missing pattern

``````matlab
[res, msg] = asserts.containsAll('Nelson language', {'Nelson', 'toolbox'});
``````


== See also

#nlink(<assert_functions:asserts.containsAny>)[asserts.containsAny];, #nlink(<assert_functions:asserts.contains>)[asserts.contains];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
