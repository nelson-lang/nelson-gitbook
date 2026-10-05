#import "../nelson_help.typ": *

= strcmp <string:8_compare_text.strcmp>

Strings comparison.

== Syntax

- #raw("res = strcmp(s1, s2)");

== Input argument

/ s1: a string, string array or cell of strings.
/ s2: a string, string array or cell of strings.

== Output argument

/ res: a logical: true if the two are identical and false otherwise.

== Description

#strong[strcmp]; compares two strings.


== Example

``````matlab
strcmp('Nelson', 'nelSon')
strcmp('Nelson', 'Nelson')

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
B = {'Handle', 'Struct'; 'Toolboxes', 'Modules'}
C = {'C', 'Contents'; 'Nel', 'son'}
strcmp(A, B)
strcmp(A, C)
strcmp(C, 'C')

``````


== See also

#nlink(<string:1_create_convert_text.char>)[char];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
