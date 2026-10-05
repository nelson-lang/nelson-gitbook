#import "../nelson_help.typ": *

= convertContainedStringsToChars <string:1_create_convert_text.convertContainedStringsToChars>

Convert contained string arrays to character vectors.

== Syntax

- #raw("R = convertContainedStringsToChars(...)");

== Description

#strong[convertContainedStringsToChars]; Convert contained string arrays to character vectors.


== Example

``````matlab
C = convertContainedStringsToChars({"one", "two"})
``````


== See also

#nlink(<string:1_create_convert_text.convertStringsToChars>)[convertStringsToChars];, #nlink(<string:1_create_convert_text.convertCharsToStrings>)[convertCharsToStrings];, #nlink(<string:1_create_convert_text.string>)[string];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
