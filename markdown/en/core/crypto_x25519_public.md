# crypto.x25519.public

Derive an X25519 public key.

## 📝 Syntax

- publicKey = crypto.x25519.public(secretKey)

## 📥 Input argument

- secretKey - a uint8 vector of 32 bytes or 64 hexadecimal characters: private key.

## 📤 Output argument

- publicKey - a character vector: 64 lowercase hexadecimal characters (32 bytes).

## 📄 Description


<b>crypto.x25519.public</b> derives the Curve25519 public key (RFC 7748) matching a 32-byte secret key. 

Generate the secret key with <b>crypto.random(32)</b> or use <b>crypto.x25519.keypair</b> to get both at once.

## Used function(s)

Monocypher

## 📚 Bibliography

https://www.rfc-editor.org/rfc/rfc7748, https://monocypher.org/

## 💡 Example

derive the public key from a secret

```matlab
sec = crypto.random(32, '-hex');
pub = crypto.x25519.public(sec)
```


## 🔗 See also

[crypto.x25519.shared](../core/crypto_x25519_shared.md), [crypto.x25519.keypair](../core/crypto_x25519_keypair.md), [crypto.random](../core/crypto_random.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
