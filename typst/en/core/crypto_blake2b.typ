#import "nelson_help.typ": *

= crypto.blake2b <core:crypto_blake2b>

Get BLAKE2b hash, optionally keyed.

== Syntax

- #raw("hexa_hash = crypto.blake2b(message)");
- #raw("hexa_hash = crypto.blake2b(message, key)");
- #raw("hexa_hash = crypto.blake2b(message, key, digestSize)");
- #raw("hexa_hash = crypto.blake2b(filename, key, digestSize, '-file')");

== Input argument

/ message: a uint8 vector (raw bytes) or a character vector (UTF-8 bytes): content to hash.
/ filename: a string: existing file whose raw bytes are hashed.
/ key: a uint8 vector (raw bytes) or a character vector (UTF-8 bytes) of at most 64 bytes, or \[\] for an unkeyed hash (default).
/ digestSize: an integer between 1 and 64: digest length in bytes (default: 64).
/ '-file': first argument is a filename (always the last argument).

== Output argument

/ hexa\_hash: a character vector: 2 \* digestSize lowercase hexadecimal characters.

== Description

#strong[crypto.blake2b]; computes a BLAKE2b digest (RFC 7693): a fast cryptographic hash with a configurable output size. With a key it acts as a message authentication code without the HMAC construction.


== Used function(s)

Monocypher

== Bibliography

https:\/\/www.rfc-editor.org\/rfc\/rfc7693, https:\/\/monocypher.org\/

== Examples

``````matlab
R = crypto.blake2b('abc')
R = crypto.blake2b('abc', [], 20)
R = crypto.blake2b('abc', 'my secret key', 32)
``````

hash a file

``````matlab
filename = [tempdir(), 'blake2b_example.txt'];
filewrite(filename, 'abc');
R = crypto.blake2b(filename, [], 64, '-file')
``````


== See also

#nlink(<core:crypto_sha512>)[crypto.sha512];, #nlink(<core:crypto_hmac>)[crypto.hmac];, #nlink(<core:crypto_argon2>)[crypto.argon2];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
