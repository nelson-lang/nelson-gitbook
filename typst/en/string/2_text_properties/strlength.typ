#import "../nelson_help.typ": *

= strlength <string:2_text_properties.strlength>

Length of strings in cell of strings or string array.

== Syntax

- #raw("len = strlength(ce)");

== Input argument

/ ce: a string, string array or cell of strings.

== Output argument

/ len: a matrix of integer values: length of strings.

== Description

#strong[strlength]; returns length of strings.


== Example

``````matlab

str = 'To make a mountain out of a molehill';
k = strlength(str)

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
k = strlength(A)

B = ["Nel", NaN, "son"; "is", "open", "source"];
k = strlength(B)

``````


== See also

#nlink(<string:8_compare_text.strcmp>)[strcmp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
