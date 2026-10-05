#import "../nelson_help.typ": *

= append <string:1_create_convert_text.append>

combines strings horizontally.

== Syntax

- #raw("res = append(s1, s2, ..., sN)");

== Input argument

/ s1, s2, ..., sN: a string, string array or cell of strings.

== Output argument

/ res: a string, string array or cell of strings.

== Description

#strong[strcat]; combines strings horizontally.

 If all inputs are character arrays, then#strong[res]; is a character array.

 If any input is a string array, then the #strong[res]; is a string array.

 If any input is a cell array, and none are string arrays, then#strong[res]; is a cell array of character vectors.

 #strong[append]; does not remove trailing white space.


== Example

``````matlab
append("Nelson", 'nelSon')
A = {'abcde','fghi'};
B = {'jkl','mn'};
C = append(A, B)
``````


== See also

#nlink(<string:1_create_convert_text.strcat>)[strcat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
