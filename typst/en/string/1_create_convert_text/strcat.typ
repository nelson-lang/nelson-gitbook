#import "../nelson_help.typ": *

= strcat <string:1_create_convert_text.strcat>

concatenate strings horizontally.

== Syntax

- #raw("res = strcat(s1, s2, ..., sN)");

== Input argument

/ s1, s2, ..., sN: a string, string array or cell of strings.

== Output argument

/ res: a string, string array or cell of strings.

== Description

#strong[strcat]; concatenate strings horizontally.

 If all inputs are character arrays, then#strong[res]; is a character array.

 If any input is a string array, then the #strong[res]; is a string array.

 If any input is a cell array, and none are string arrays, then#strong[res]; is a cell array of character vectors.

 For cell and string array inputs,#strong[strcat]; does not remove trailing white space.

 For character array inputs,#strong[strcat]; removes trailing ASCII white-space characters.


== Example

``````matlab
strcat("Nelson", 'nelSon')
A = {'abcde','fghi'};
B = {'jkl','mn'};
C = strcat(A, B)
``````


== See also

#nlink(<string:1_create_convert_text.append>)[append];, #nlink(<string:6_join_split_extract.join>)[join];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
