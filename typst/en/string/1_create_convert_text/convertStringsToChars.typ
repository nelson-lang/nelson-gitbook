#import "../nelson_help.typ": *

= convertStringsToChars <string:1_create_convert_text.convertStringsToChars>

Convert string arrays to character arrays.

== Syntax

- #raw("C = convertStringsToChars(S)");
- #raw("[B1, B2, ..., BN] = convertStringsToChars(A1, A2, ..., AN)");

== Input argument

/ S: if S is a string array, output C will be converted to an cell of strings or an character vector (if S is scalar).
/ A1, A2, ..., AN: variables to convert to char array if it is a string array.

== Output argument

/ C: a char array or unaltered variable
/ B1, B2, ..., BN: variables converted to char array if it is a string array.

== Description

#strong[convertStringsToChars]; converts string arrays to character arrays.


== Example

``````matlab
A = convertStringsToChars("Nelson")
A = convertStringsToChars(["Nelson", string(NaN)])
``````


== See also

#nlink(<string:1_create_convert_text.convertCharsToStrings>)[convertCharsToStringss];, #nlink(<data_structures:cellstr>)[cellstr];, #nlink(<string:1_create_convert_text.string>)[string];, #nlink(<string:1_create_convert_text.char>)[char];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
