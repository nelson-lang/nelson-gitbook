#import "nelson_help.typ": *

= native2unicode <characters_encoding:native2unicode>

Converts bytes representation to unicode characters

== Syntax

- #raw("str = native2unicode(bytes, charset)");

== Input argument

/ bytes: a uint8 vector
/ charset: an scalar string or vector characters array.

== Output argument

/ str: an vector characters array.

== Description

#strong[native2unicode]; converts an uint8 vector to unicode characters.

 #strong[str \= native2unicode(bytes)]; converts an uint8 vector to unicode characters (using the native character set of the machine).

 #strong[str \= native2unicode(bytes, charset)]; converts an uint8 vector to unicode characters (character set #strong[charset]; instead of the native character set).

 List of characters set:#link("https://www.iana.org/assignments/character-sets/character-sets.xhtml")[https:\/\/www.iana.org\/assignments\/character-sets\/character-sets.xhtml];


== Bibliography

ICU library

== Example

``````matlab
native2unicode(uint8([149   208   137   188   150   188]), 'SHIFT_JIS')
``````


== See also

#nlink(<characters_encoding:unicode2native>)[unicode2native];, #nlink(<characters_encoding:native2unicode>)[native2unicode];, #nlink(<string:1_create_convert_text.char>)[char];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
