#import "nelson_help.typ": *

= crypto.ed25519.verify <core:ed25519_verify>

Verify an Ed25519 signature.

== Syntax

- #raw("tf = crypto.ed25519.verify(message, signature, publicKey)");
- #raw("tf = crypto.ed25519.verify(filename, signature, publicKey, '-file')");

== Input argument

/ message: a uint8 vector (raw bytes) or a character vector (UTF-8 bytes): signed content.
/ filename: a string: existing file whose raw bytes are the signed content.
/ signature: a uint8 vector of 64 bytes or 128 hexadecimal characters.
/ publicKey: a uint8 vector of 32 bytes or 64 hexadecimal characters.
/ '-file': first argument is a filename.

== Output argument

/ tf: a logical: true if the signature is valid for the message and the public key.

== Description

#strong[crypto.ed25519.verify]; checks a pure Ed25519 signature (RFC 8032, section 5.1) over the exact bytes of a message.

 An invalid signature returns #strong[false]; without raising an error. Signatures produced by #strong[crypto.ed25519.sign]; or by any RFC 8032 implementation (for example #strong[openssl pkeyutl -sign -rawin];) are accepted.

 The public key is the raw 32-byte Ed25519 key, given as bytes or as lowercase or uppercase hexadecimal text.


== Used function(s)

Monocypher

== Bibliography

https:\/\/www.rfc-editor.org\/rfc\/rfc8032, https:\/\/monocypher.org\/

== Examples

RFC 8032 test vector 3

``````matlab
publicKey = 'fc51cd8e6218a1a38da47ed00230f0580816ed13ba3303ac5deb911548908025';
signature = ['6291d657deec24024827e69c3abe01a30ce548a284743a445e3680d7db5ac3ac18ff9b', ...
'538d16f290ae67f760984dc6594a7c15e9716ed28dc027beceea1ec40a'];
message = uint8([175, 130]);
tf = crypto.ed25519.verify(message, signature, publicKey)
tf = crypto.ed25519.verify(uint8([175, 131]), signature, publicKey)
``````

sign then verify a file

``````matlab
seed = 'c5aa8df43f9f837bedb7442f31dcb7b166d38535076f094b85ce3a2e0b4458f7';
filename = [tempdir(), 'registry.json'];
filewrite(filename, '{"packages": []}');
[signature, publicKey] = crypto.ed25519.sign(filename, seed, '-file');
tf = crypto.ed25519.verify(filename, signature, publicKey, '-file')
``````


== See also

#nlink(<core:ed25519_sign>)[crypto.ed25519.sign];, #nlink(<core:sha256>)[sha256];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
