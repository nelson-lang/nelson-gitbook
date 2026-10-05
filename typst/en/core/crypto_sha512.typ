#import "nelson_help.typ": *

= crypto.sha512 <core:crypto_sha512>

Get SHA-512 checksum.

== Syntax

- #raw("hexa_hash = crypto.sha512(str)");
- #raw("hexa_hash = crypto.sha512(filename)");
- #raw("hexa_hash = crypto.sha512(bytes)");
- #raw("hexa_hash = crypto.sha512(str, '-file')");
- #raw("hexa_hash = crypto.sha512(str, '-string')");

== Input argument

/ str: a character vector, cell of strings or string array: UTF-8 bytes of the text are hashed.
/ filename: a string: existing filename: raw bytes of the file are hashed.
/ bytes: a uint8 vector: raw bytes to hash.
/ '-file' or '-string': force to hash as file or string content (default: a text naming an existing file is hashed as a file).

== Output argument

/ hexa\_hash: a character vector, cell of strings or string array: 128 lowercase hexadecimal characters per input (empty when a file cannot be read).

== Description

#strong[crypto.sha512]; computes the SHA-512 digest (FIPS 180-4) of text, raw bytes or a file, with the same conventions as #strong[sha256];.


== Used function(s)

Monocypher

== Bibliography

https:\/\/monocypher.org\/

== Examples

``````matlab
R = crypto.sha512('abc')
R = crypto.sha512(uint8('abc'))
R = crypto.sha512({'Hello', 'World'})
``````

hash a file

``````matlab
filename = [tempdir(), 'sha512_example.txt'];
filewrite(filename, 'abc');
R = crypto.sha512(filename, '-file')
``````


== See also

#nlink(<core:sha256>)[sha256];, #nlink(<core:crypto_hmac>)[crypto.hmac];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
