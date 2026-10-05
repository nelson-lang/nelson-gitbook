#import "../nelson_help.typ": *

= regexp <string:5_regular_expressions.regexp>

Match regular expression.

== Syntax

- #raw("startIndex = regexp(str, expression)");
- #raw("[startIndex, endIndex] = regexp(str, expression)");
- #raw("out = regexp(str, expression, outkey)");
- #raw("[out1, ..., outN] = regexp(str, expression, outkey1, ..., outkeyN)");
- #raw("out = regexp(..., option)");

== Input argument

/ str: a character vector, string array, or cell array of character vectors.
/ expression: a regular expression.
/ outkey: 'start', 'end', 'tokenExtents', 'match', 'tokens', 'names', or 'split'.
/ option: 'once', 'ignorecase', 'matchcase', 'emptymatch', 'dotexceptnewline', 'lineanchors', or 'forceCellOutput'.

== Output argument

/ out: match indices, matches, tokens, named token structures, or split text.

== Description

#strong[regexp]; searches text using Perl-compatible regular expressions.

 A regular expression describes a pattern rather than a literal string. Use it when the text can vary, for example when matching identifiers, dates, email addresses, numbers, tags, or alternative spellings.

 A typical workflow is to identify the pieces of text that are unique, translate each piece into regular expression syntax, and then call #strong[regexp]; with the output key that returns the information you need.

 By default, #strong[regexp]; returns 1-based start indices for every non-overlapping match. Matching continues after the end of the previous match. Use the #strong['once']; option to stop after the first match.

 Common metacharacters:

 

#table(
  columns: 3,
  [Pattern], [Meaning], [Example], 
  [.], [any character], [#strong['a.c']; matches #strong['abc']; and #strong['axc'];], 
  [\[abc\]], [one character from a set], [#strong['\[ch\]at']; matches #strong['cat']; or #strong['hat'];], 
  [\[^abc\]], [one character not in a set], [#strong['\[^0-9\]']; matches a non-digit character], 
  [\[a-z\]], [one character in a range], [#strong['\[A-Z\]+']; matches uppercase letters], 
  [\\w, \\W], [word or non-word character], [#strong['\\w+']; matches words and identifiers], 
  [\\d, \\D], [digit or non-digit character], [#strong['\\d{4}']; matches four digits], 
  [\\s, \\S], [white-space or non-white-space character], [#strong['\\w+\\s+\\w+']; matches two words separated by spaces], 
)
 Quantifiers specify how many times the preceding expression can occur.

 

#table(
  columns: 2,
  [Pattern], [Meaning], 
  [expr\*], [zero or more times], 
  [expr+], [one or more times], 
  [expr?], [zero or one time], 
  [expr{m,n}], [at least #strong[m]; and at most #strong[n]; times], 
  [expr{m,}], [at least #strong[m]; times], 
  [expr{n}], [exactly #strong[n]; times], 
)
 Quantifiers are greedy by default. Add #strong[?]; after a quantifier for a lazy match, such as #strong['.\*?'];. Add #strong[+]; after a quantifier for a possessive match, such as #strong['.\*+'];.

 Grouping operators control tokens and alternatives.

 

#table(
  columns: 2,
  [Pattern], [Meaning], 
  [(expr)], [group and capture a token], 
  [(?:expr)], [group without capturing a token], 
  [(?\<name\>expr)], [capture a named token], 
  [(expr1|expr2)], [match either expression], 
  [\\1, \\2, ...], [match the same text as a previously captured token], 
)
 Anchors and assertions match positions rather than characters.

 

#table(
  columns: 2,
  [Pattern], [Meaning], 
  [^, \$], [beginning and end of the input text, or of a line with #strong['lineanchors'];], 
  [\\\<, \\\>], [beginning and end of a word], 
  [\\b, \\B], [word boundary or not a word boundary], 
  [(?\=expr), (?!expr)], [positive or negative lookahead], 
  [(?\<\=expr), (?\<!expr)], [positive or negative lookbehind], 
)
 Use #strong['ignorecase']; for case-insensitive matching, #strong['dotexceptnewline']; when #strong[.]; must not match newline characters, #strong['lineanchors']; when #strong[^]; and #strong[\$]; should apply to individual lines, and #strong['forceCellOutput']; to force scalar text results into cells.


== Examples

Find start indices and matched text.

``````matlab

regexp('bat cat coat', 'c[aeiou]+t')
regexp('She sells sea shells.', '[Ss]h.', 'match')
regexp('01/11/2000', '(?<month>\d+)/(?<day>\d+)/(?<year>\d+)', 'names')

``````

Match several related speed units with one expression.

``````matlab

txt = ['The train traveled at 250 kilometers per hour ', ...
       'and the car traveled at 120 km/h.'];
pattern = 'k(ilo)?m(eters)?(/|\sper\s)h(r|our)?';
regexp(txt, pattern, 'match')

``````

Extract email addresses from a cell array of text.

``````matlab

contacts = {'Harry  hparker@hmail.com'; ...
            'Janice jan_stephens@horizon.net'; ...
            'Jason  jason_blake@mymail.com'};
email = '[a-z_]+@[a-z]+\.(com|net)';
regexp(contacts, email, 'match')

``````

Use tokens, named tokens, and split output.

``````matlab

regexp('3.14', '(\d+)\.(\d+)', 'tokens', 'once')
regexp('color: blue', '(?<key>\w+):\s*(?<value>\w+)', 'names')
regexp('one, two; three', '[,;]\s*', 'split')

``````


== See also

#nlink(<string:5_regular_expressions.regexpi>)[regexpi];, #nlink(<string:5_regular_expressions.regexprep>)[regexprep];, #nlink(<string:5_regular_expressions.regexptranslate>)[regexptranslate];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
