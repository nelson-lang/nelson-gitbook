# crypto.ed25519.sign

Compute an Ed25519 signature.

## 📝 Syntax

- signature = crypto.ed25519.sign(message, seed)
- [signature, publicKey] = crypto.ed25519.sign(message, seed)
- [signature, publicKey] = crypto.ed25519.sign(filename, seed, '-file')

## 📥 Input argument

- message - a uint8 vector (raw bytes) or a character vector (UTF-8 bytes): content to sign.
- filename - a string: existing file whose raw bytes are signed.
- seed - a uint8 vector of 32 bytes or 64 hexadecimal characters: private Ed25519 seed.
- '-file' - first argument is a filename.

## 📤 Output argument

- signature - a character vector: 128 lowercase hexadecimal characters (64 bytes).
- publicKey - a character vector: 64 lowercase hexadecimal characters (32 bytes), public key derived from the seed.

## 📄 Description


<b>crypto.ed25519.sign</b> computes a pure Ed25519 signature (RFC 8032, section 5.1) over the exact bytes of a message. Signatures are deterministic: the same seed and message always give the same signature. 

The seed is the 32-byte private key. Keep it secret: anyone holding it can sign. This function is intended for tests, local development and private package registries; the public key returned as second output is the value to distribute to verifiers.

## Used function(s)

Monocypher

## 📚 Bibliography

https://www.rfc-editor.org/rfc/rfc8032, https://monocypher.org/

## 💡 Examples

RFC 8032 test vector 3

```matlab
seed = 'c5aa8df43f9f837bedb7442f31dcb7b166d38535076f094b85ce3a2e0b4458f7';
[signature, publicKey] = crypto.ed25519.sign(uint8([175, 130]), seed)
```
sign a text message and verify it

```matlab
seed = 'c5aa8df43f9f837bedb7442f31dcb7b166d38535076f094b85ce3a2e0b4458f7';
[signature, publicKey] = crypto.ed25519.sign('Nelson', seed);
tf = crypto.ed25519.verify('Nelson', signature, publicKey)
```


## 🔗 See also

[crypto.ed25519.verify](../core/ed25519_verify.md), [sha256](../core/sha256.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
