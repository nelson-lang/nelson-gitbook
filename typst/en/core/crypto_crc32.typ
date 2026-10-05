#import "nelson_help.typ": *

= crypto.crc32 <core:crypto_crc32>

CRC-32 checksum (crypto namespace alias).

== Syntax

- #raw("hexa_hash = crypto.crc32(...)");

== Input argument

/ ...: see #strong[crc32];.

== Output argument

/ hexa\_hash: hexadecimal string, same as #strong[crc32];.

== Description

#strong[crypto.crc32]; is an alias of #strong[crc32]; in the #strong[crypto]; namespace (same arguments and same result).


== See also

#nlink(<core:crc32>)[crc32];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
