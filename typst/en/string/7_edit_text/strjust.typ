#import "../nelson_help.typ": *

= strjust <string:7_edit_text.strjust>

Justify strings

== Syntax

- #raw("J = strjust(str)");
- #raw("J = strjust(str, side)");

== Input argument

/ str: characters vector, cell of characters or string array.
/ side: 'left', 'center', 'right' (default).

== Output argument

/ J: justified text

== Description

#strong[J \= strjust(str, side)]; returns the text that is justified on the side specified by#strong[side];.


== Examples

``````matlab
S = ["a"; "ab"; "abc"; "abcd"];
J = strjust (S)
J = strjust (S, 'left')
J = strjust (S, 'center')
J = strjust (S, 'right')
``````

``````matlab
J = strjust('                 text', 'center')
``````


== See also

#nlink(<string:1_create_convert_text.blanks>)[blanks];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
