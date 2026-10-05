#import "nelson_help.typ": *

= crypto.aead.decrypt <core:crypto_aead_decrypt>

Authenticated decryption (XChaCha20-Poly1305).

== Syntax

- #raw("plaintext = crypto.aead.decrypt(key, nonce, boxed)");
- #raw("plaintext = crypto.aead.decrypt(key, nonce, boxed, associatedData)");

== Input argument

/ key: a uint8 vector of 32 bytes or 64 hexadecimal characters: secret key.
/ nonce: a uint8 vector of 24 bytes or 48 hexadecimal characters: unique per message for a given key (use crypto.random).
/ boxed: a uint8 vector or hexadecimal text: the 16-byte authentication tag followed by the ciphertext, as produced by crypto.aead.encrypt.
/ associatedData: a uint8 vector (raw bytes) or a character vector (UTF-8 bytes): the same associated data passed to encrypt.

== Output argument

/ plaintext: a uint8 row vector: the decrypted bytes.

== Description

#strong[crypto.aead.decrypt]; verifies the authentication tag and returns the plaintext of a message produced by #strong[crypto.aead.encrypt];.

 It raises #strong[Nelson:core:aeadAuthenticationFailed]; when the key, nonce, associated data or encrypted message has been altered; never use unauthenticated data.


== Used function(s)

Monocypher

== Bibliography

https:\/\/monocypher.org\/, https:\/\/datatracker.ietf.org\/doc\/draft-irtf-cfrg-xchacha\/

== Example

decrypt a message

``````matlab
key = crypto.random(32);
nonce = crypto.random(24);
boxed = crypto.aead.encrypt(key, nonce, uint8([1 2 3 4]));
crypto.aead.decrypt(key, nonce, boxed)
``````


== See also

#nlink(<core:crypto_aead_encrypt>)[crypto.aead.encrypt];, #nlink(<core:crypto_random>)[crypto.random];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
