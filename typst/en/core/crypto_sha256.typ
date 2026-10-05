#import "nelson_help.typ": *

= crypto.sha256 <core:crypto_sha256>

SHA-256 checksum (crypto namespace alias).

== Syntax

- #raw("hexa_hash = crypto.sha256(...)");

== Input argument

/ ...: see #strong[sha256];.

== Output argument

/ hexa\_hash: hexadecimal string, same as #strong[sha256];.

== Description

#strong[crypto.sha256]; is an alias of #strong[sha256]; in the #strong[crypto]; namespace (same arguments and same result).


== See also

#nlink(<core:sha256>)[sha256];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
