#import "nelson_help.typ": *

= crypto.x25519.public <core:crypto_x25519_public>

Derive an X25519 public key.

== Syntax

- #raw("publicKey = crypto.x25519.public(secretKey)");

== Input argument

/ secretKey: a uint8 vector of 32 bytes or 64 hexadecimal characters: private key.

== Output argument

/ publicKey: a character vector: 64 lowercase hexadecimal characters (32 bytes).

== Description

#strong[crypto.x25519.public]; derives the Curve25519 public key (RFC 7748) matching a 32-byte secret key.

 Generate the secret key with #strong[crypto.random(32)]; or use #strong[crypto.x25519.keypair]; to get both at once.


== Used function(s)

Monocypher

== Bibliography

https:\/\/www.rfc-editor.org\/rfc\/rfc7748, https:\/\/monocypher.org\/

== Example

derive the public key from a secret

``````matlab
sec = crypto.random(32, '-hex');
pub = crypto.x25519.public(sec)
``````


== See also

#nlink(<core:crypto_x25519_shared>)[crypto.x25519.shared];, #nlink(<core:crypto_x25519_keypair>)[crypto.x25519.keypair];, #nlink(<core:crypto_random>)[crypto.random];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
