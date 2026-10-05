#import "nelson_help.typ": *

= asserts.matchesAny <assert_functions:asserts.matchesAny>

Check that text matches at least one regular expression.

== Syntax

- #raw("asserts.matchesAny(text, patterns)");
- #raw("[res, msg] = asserts.matchesAny(text, patterns)");

== Input argument

/ text: Character vector or string scalar to test.
/ patterns: Regular expression patterns. At least one pattern must match.

== Output argument

/ res: true if the assertion passes, false otherwise.
/ msg: assertion failure message, empty on success.

== Description

The assertion passes when at least one regular expression matches text.

 Invalid regular expressions raise an argument error immediately.


== Examples

One expression matches

``````matlab
asserts.matchesAny('abc123', {'^xyz', '[0-9]+$'});
``````

Capture missing matches

``````matlab
[res, msg] = asserts.matchesAny('abc123', {'^xyz', 'zzz'});
``````


== See also

#nlink(<assert_functions:asserts.matchesAll>)[asserts.matchesAll];, #nlink(<assert_functions:asserts.match>)[asserts.match];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
