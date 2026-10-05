#import "../nelson_help.typ": *

= regexptranslate <string:5_regular_expressions.regexptranslate>

Translate text into regular expression.

== Syntax

- #raw("newStr = regexptranslate(op, str)");
- #raw("newStr = regexptranslate('flexible', str, expression)");

== Input argument

/ op: 'escape', 'wildcard', or 'flexible'.
/ str: a character vector, string array, or cell array of character vectors.

== Output argument

/ newStr: translated regular expression text.

== Description

#strong[regexptranslate]; escapes regular expression metacharacters or translates wildcard characters into regular expression syntax.


== Example

``````matlab

regexptranslate('escape', 'a+b*c?.m')
regexptranslate('wildcard', '*.m')

``````


== See also

#nlink(<string:5_regular_expressions.regexp>)[regexp];, #nlink(<string:5_regular_expressions.regexprep>)[regexprep];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
