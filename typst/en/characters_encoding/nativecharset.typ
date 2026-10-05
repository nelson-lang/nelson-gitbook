#import "nelson_help.typ": *

= nativecharset <characters_encoding:nativecharset>

Find all charset matches that appear to be consistent with the input

== Syntax

- #raw("ce = nativecharset(bytes)");

== Input argument

/ bytes: a uint8 vector, or string or row characters array

== Output argument

/ ce: a cell of strings.

== Description

#strong[nativecharset]; find all charset matches that appear to be consistent with the input, returning a cell of string with results.

 The results are ordered with the best quality match first.

 List of characters set:#link("https://www.iana.org/assignments/character-sets/character-sets.xhtml")[https:\/\/www.iana.org\/assignments\/character-sets\/character-sets.xhtml];


== Bibliography

ICU library

== Example

``````matlab
C = uint8([194   232   240   242   243   224   235   252   237   224   255]);
nativecharset(C)
``````


== See also

#nlink(<characters_encoding:unicode2native>)[unicode2native];, #nlink(<string:1_create_convert_text.char>)[char];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
