#import "nelson_help.typ": *

= crypto.x25519.keypair <core:crypto_x25519_keypair>

Generate an X25519 key pair.

== Syntax

- #raw("[publicKey, secretKey] = crypto.x25519.keypair()");

== Input argument

/ (none): this function takes no input argument.

== Output argument

/ publicKey: a character vector: 64 lowercase hexadecimal characters (32 bytes).
/ secretKey: a character vector: 64 lowercase hexadecimal characters (32 secure random bytes); keep it secret.

== Description

#strong[crypto.x25519.keypair]; generates a random Curve25519 key pair (RFC 7748) using #strong[crypto.random];. Share the public key and keep the secret key private.


== Used function(s)

Monocypher

== Bibliography

https:\/\/www.rfc-editor.org\/rfc\/rfc7748, https:\/\/monocypher.org\/

== Example

generate a key pair

``````matlab
[pub, sec] = crypto.x25519.keypair()
``````


== See also

#nlink(<core:crypto_x25519_public>)[crypto.x25519.public];, #nlink(<core:crypto_x25519_shared>)[crypto.x25519.shared];, #nlink(<core:crypto_random>)[crypto.random];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
