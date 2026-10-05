#import "nelson_help.typ": *

= crc32 <core:crc32>

Get crc32 checksum.

== Syntax

- #raw("hexa_hash = crc32(str)");
- #raw("hexa_hash = crc32(filename)");
- #raw("hexa_hash = crc32(str, '-file')");
- #raw("hexa_hash = crc32(str, '-string')");
- #raw("hexa_hash = crypto.crc32(...)");

== Input argument

/ str: a character vector, cell of string or array of strings: content of string will be hashed.
/ filename: a string: existing filename: content of the file will be hashed.
/ '-file' or '-string': force to hash as file or string content.

== Output argument

/ hexa\_hash: a character vector, cell of string or array of strings: hashed result (checksum).

== Description

#strong[crc32]; get crc32 checksum.

 #strong[crypto.crc32]; is an alias of #strong[crc32];, in the #strong[crypto]; namespace shared with #strong[crypto.ed25519.verify]; and #strong[crypto.ed25519.sign];.


== Examples

``````matlab
R = crc32('Nelson')
``````

``````matlab
R = crc32({'Hello', 'World'})
``````

``````matlab
R = crc32(["Hello"; "World"])
``````

``````matlab
R = crc32([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'])
``````

``````matlab
R = crc32([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'], '-file')
``````

``````matlab
R = crc32([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'], '-string')
``````


== See also

#nlink(<core:sha256>)[sha256];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
