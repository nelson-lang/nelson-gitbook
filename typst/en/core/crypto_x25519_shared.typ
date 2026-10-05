#import "nelson_help.typ": *

= crypto.x25519.shared <core:crypto_x25519_shared>

Compute an X25519 shared secret.

== Syntax

- #raw("sharedSecret = crypto.x25519.shared(secretKey, peerPublicKey)");

== Input argument

/ secretKey: a uint8 vector of 32 bytes or 64 hexadecimal characters: your private key.
/ peerPublicKey: a uint8 vector of 32 bytes or 64 hexadecimal characters: the other party public key.

== Output argument

/ sharedSecret: a character vector: 64 lowercase hexadecimal characters (32 bytes).

== Description

#strong[crypto.x25519.shared]; computes the Diffie-Hellman shared secret (RFC 7748) from your secret key and a peer public key. Both parties obtain the same value.

 Do not use the raw shared secret as an encryption key: hash it first, for example with #strong[crypto.blake2b(shared, \[\], 32)];.


== Used function(s)

Monocypher

== Bibliography

https:\/\/www.rfc-editor.org\/rfc\/rfc7748, https:\/\/monocypher.org\/

== Example

both peers agree on the same secret

``````matlab
[aPub, aSec] = crypto.x25519.keypair();
[bPub, bSec] = crypto.x25519.keypair();
isequal(crypto.x25519.shared(aSec, bPub), crypto.x25519.shared(bSec, aPub))
``````


== See also

#nlink(<core:crypto_x25519_public>)[crypto.x25519.public];, #nlink(<core:crypto_x25519_keypair>)[crypto.x25519.keypair];, #nlink(<core:crypto_aead_encrypt>)[crypto.aead.encrypt];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
