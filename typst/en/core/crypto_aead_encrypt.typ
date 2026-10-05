#import "nelson_help.typ": *

= crypto.aead.encrypt <core:crypto_aead_encrypt>

Authenticated encryption (XChaCha20-Poly1305).

== Syntax

- #raw("boxed = crypto.aead.encrypt(key, nonce, plaintext)");
- #raw("boxed = crypto.aead.encrypt(key, nonce, plaintext, associatedData)");

== Input argument

/ key: a uint8 vector of 32 bytes or 64 hexadecimal characters: secret key.
/ nonce: a uint8 vector of 24 bytes or 48 hexadecimal characters: unique per message for a given key (use crypto.random).
/ plaintext: a uint8 vector (raw bytes) or a character vector (UTF-8 bytes): content to encrypt.
/ associatedData: a uint8 vector (raw bytes) or a character vector (UTF-8 bytes): optional data authenticated but not encrypted; the same value must be given to decrypt.

== Output argument

/ boxed: a uint8 row vector: the 16-byte authentication tag followed by the ciphertext (same length as the plaintext).

== Description

#strong[crypto.aead.encrypt]; encrypts and authenticates a message with XChaCha20-Poly1305, an authenticated encryption scheme with a 256-bit key and a 192-bit nonce.

 The nonce must be unique for every message encrypted with the same key; a repeated nonce breaks the security. Generate it with #strong[crypto.random(24)]; and store it alongside the encrypted message (it is not secret).


== Used function(s)

Monocypher

== Bibliography

https:\/\/monocypher.org\/, https:\/\/datatracker.ietf.org\/doc\/draft-irtf-cfrg-xchacha\/

== Example

encrypt then decrypt

``````matlab
key = crypto.random(32);
nonce = crypto.random(24);
boxed = crypto.aead.encrypt(key, nonce, 'a secret message');
char(crypto.aead.decrypt(key, nonce, boxed))
``````


== See also

#nlink(<core:crypto_aead_decrypt>)[crypto.aead.decrypt];, #nlink(<core:crypto_random>)[crypto.random];, #nlink(<core:crypto_x25519_shared>)[crypto.x25519.shared];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
