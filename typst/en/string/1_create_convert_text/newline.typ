#import "../nelson_help.typ": *

= newline <string:1_create_convert_text.newline>

Returns a newline character.

== Syntax

- #raw("ch = newline()");

== Output argument

/ ch: a char: equivalent to char(10)

== Description

#strong[newline]; returns a newline character.


== Example

``````matlab
double(newline)
``````


== See also

#nlink(<double:double>)[double];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
