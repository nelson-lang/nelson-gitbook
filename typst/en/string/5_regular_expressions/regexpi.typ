#import "../nelson_help.typ": *

= regexpi <string:5_regular_expressions.regexpi>

Match regular expression, ignoring case.

== Syntax

- #raw("startIndex = regexpi(str, expression)");
- #raw("out = regexpi(str, expression, outkey)");
- #raw("out = regexpi(..., option)");

== Input argument

/ str: a character vector, string array, or cell array of character vectors.
/ expression: a regular expression.
/ outkey: same output keys as #strong[regexp];.

== Output argument

/ out: match indices, matches, tokens, named token structures, or split text.

== Description

#strong[regexpi]; is equivalent to #strong[regexp]; with case-insensitive matching enabled by default.


== Example

``````matlab

regexpi('ABC abc', 'abc', 'match')

``````


== See also

#nlink(<string:5_regular_expressions.regexp>)[regexp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
