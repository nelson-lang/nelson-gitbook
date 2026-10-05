#import "../nelson_help.typ": *

= convertCharsToStrings <string:1_create_convert_text.convertCharsToStrings>

Convert chars arrays to string arrays.

== Syntax

- #raw("S = convertCharsToStrings(C)");
- #raw("[B1, B2, ..., BN] = convertCharsToStrings(A1, A2, ..., AN)");

== Input argument

/ C: if C is a char array, output S will be converted to an string array.
/ A1, A2, ..., AN: variables to convert to string array if it is a char array.

== Output argument

/ S: a string array or unaltered variable
/ B1, B2, ..., BN: variables converted to string array if it is a char array or cell of char array.

== Description

#strong[convertCharsToStrings]; converts chars arrays to string arrays.


== Example

``````matlab
[A, B, C, D] = convertCharsToStrings("one", 2, 'three', {'four' ; 'NaN' ;'five'})
R = convertCharsToStrings(['Nelson' ; '  is  '; '  good'])
``````


== See also

#nlink(<string:1_create_convert_text.convertStringsToChars>)[convertStringsToChars];, #nlink(<data_structures:cellstr>)[cellstr];, #nlink(<string:1_create_convert_text.string>)[string];, #nlink(<string:1_create_convert_text.char>)[char];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
