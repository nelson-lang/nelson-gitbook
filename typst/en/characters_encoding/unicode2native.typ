#import "nelson_help.typ": *

= unicode2native <characters_encoding:unicode2native>

Converts unicode characters representation to bytes

== Syntax

- #raw("bytes = unicode2native(str, charset)");

== Input argument

/ str: an scalar string or vector characters array.
/ charset: an scalar string or vector characters array.

== Output argument

/ bytes: a uint8 vector

== Description

#strong[unicode2native]; converts unicode characters to an numeric array.

 #strong[bytes \= unicode2native(str)]; converts unicode characters to an numeric array (the native character set of the machine).

 #strong[bytes \= unicode2native(str, charset)]; converts unicode characters to an numeric array (character set #strong[charset]; instead of the native character set).

 List of characters set:#link("http://www.iana.org/assignments/character-sets/character-sets.xhtml")[http:\/\/www.iana.org\/assignments\/character-sets\/character-sets.xhtml];


== Bibliography

ICU library

== Example

``````matlab
R = unicode2native('片仮名', 'SHIFT_JIS')
``````


== See also

#nlink(<characters_encoding:native2unicode>)[native2unicode];, #nlink(<string:1_create_convert_text.char>)[char];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
