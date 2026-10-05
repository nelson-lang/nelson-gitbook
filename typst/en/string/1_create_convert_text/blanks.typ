#import "../nelson_help.typ": *

= blanks <string:1_create_convert_text.blanks>

creates an string of blank characters.

== Syntax

- #raw("r = blanks(n)");

== Input argument

/ n: an value integer, number of blanks.

== Output argument

/ r: a character array with n blanks

== Description

#strong[blanks]; creates an string of blank characters.


== Example

``````matlab
blanks(4)
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
