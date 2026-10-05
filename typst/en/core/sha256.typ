#import "nelson_help.typ": *

= sha256 <core:sha256>

Get sha256 checksum.

== Syntax

- #raw("hexa_hash = sha256(str)");
- #raw("hexa_hash = sha256(filename)");
- #raw("hexa_hash = sha256(str, '-file')");
- #raw("hexa_hash = sha256(str, '-string')");
- #raw("hexa_hash = crypto.sha256(...)");

== Input argument

/ str: a character vector, cell of string or array of strings: content of string will be hashed.
/ filename: a string: existing filename: content of the file will be hashed.
/ '-file' or '-string': force to hash as file or string content.

== Output argument

/ hexa\_hash: a character vector, cell of string or array of strings: hashed result (checksum).

== Description

#strong[sha256]; get sha256 checksum.

 #strong[crypto.sha256]; is an alias of #strong[sha256];, in the #strong[crypto]; namespace shared with #strong[crypto.ed25519.verify]; and #strong[crypto.ed25519.sign];.


== Examples

``````matlab
R = sha256('Nelson')
``````

``````matlab
R = sha256({'Hello', 'World'})
``````

``````matlab
R = sha256(["Hello"; "World"])
``````

``````matlab
R = sha256([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'])
``````

``````matlab
R = sha256([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'], '-file')
``````

``````matlab
R = sha256([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'], '-string')
``````


== See also

#nlink(<core:crc32>)[crc32];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
