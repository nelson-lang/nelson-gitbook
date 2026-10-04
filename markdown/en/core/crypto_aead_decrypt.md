# crypto.aead.decrypt

Authenticated decryption (XChaCha20-Poly1305).

## 📝 Syntax

- plaintext = crypto.aead.decrypt(key, nonce, boxed)
- plaintext = crypto.aead.decrypt(key, nonce, boxed, associatedData)

## 📥 Input argument

- key - a uint8 vector of 32 bytes or 64 hexadecimal characters: secret key.
- nonce - a uint8 vector of 24 bytes or 48 hexadecimal characters: unique per message for a given key (use crypto.random).
- boxed - a uint8 vector or hexadecimal text: the 16-byte authentication tag followed by the ciphertext, as produced by crypto.aead.encrypt.
- associatedData - a uint8 vector (raw bytes) or a character vector (UTF-8 bytes): the same associated data passed to encrypt.

## 📤 Output argument

- plaintext - a uint8 row vector: the decrypted bytes.

## 📄 Description

<b>crypto.aead.decrypt</b> verifies the authentication tag and returns the plaintext of a message produced by <b>crypto.aead.encrypt</b>.

It raises <b>Nelson:core:aeadAuthenticationFailed</b> when the key, nonce, associated data or encrypted message has been altered; never use unauthenticated data.

## Used function(s)

Monocypher

## 📚 Bibliography

https://monocypher.org/, https://datatracker.ietf.org/doc/draft-irtf-cfrg-xchacha/

## 💡 Example

decrypt a message

```matlab
key = crypto.random(32);
nonce = crypto.random(24);
boxed = crypto.aead.encrypt(key, nonce, uint8([1 2 3 4]));
crypto.aead.decrypt(key, nonce, boxed)
```

## 🔗 See also

[crypto.aead.encrypt](../core/crypto.aead.encrypt.md), [crypto.random](../core/crypto.random.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
