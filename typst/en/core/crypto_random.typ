#import "nelson_help.typ": *

= crypto.random <core:crypto_random>

Get cryptographically secure random bytes.

== Syntax

- #raw("bytes = crypto.random(n)");
- #raw("hexa = crypto.random(n, '-hex')");

== Input argument

/ n: an integer between 1 and 1048576: number of random bytes.
/ '-hex': return the bytes as a hexadecimal character vector instead of uint8.

== Output argument

/ bytes: a uint8 row vector of n secure random bytes.
/ hexa: a character vector: 2 \* n lowercase hexadecimal characters.

== Description

#strong[crypto.random]; returns random bytes from the operating system secure random source (#strong[BCryptGenRandom]; on Windows, #strong[\/dev\/urandom]; on other systems). Use it for keys, nonces and salts. Unlike #strong[rand];, its output is unpredictable and must not be seeded.


== Example

``````matlab
key = crypto.random(32)
nonce = crypto.random(24, '-hex')
``````


== See also

#nlink(<core:crypto_aead_encrypt>)[crypto.aead.encrypt];, #nlink(<core:crypto_x25519_keypair>)[crypto.x25519.keypair];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
