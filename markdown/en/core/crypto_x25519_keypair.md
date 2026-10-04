# crypto.x25519.keypair

Generate an X25519 key pair.

## 📝 Syntax

- [publicKey, secretKey] = crypto.x25519.keypair()

## 📥 Input argument

- (none) - this function takes no input argument.

## 📤 Output argument

- publicKey - a character vector: 64 lowercase hexadecimal characters (32 bytes).
- secretKey - a character vector: 64 lowercase hexadecimal characters (32 secure random bytes); keep it secret.

## 📄 Description

<b>crypto.x25519.keypair</b> generates a random Curve25519 key pair (RFC 7748) using <b>crypto.random</b>. Share the public key and keep the secret key private.

## Used function(s)

Monocypher

## 📚 Bibliography

https://www.rfc-editor.org/rfc/rfc7748, https://monocypher.org/

## 💡 Example

generate a key pair

```matlab
[pub, sec] = crypto.x25519.keypair()
```

## 🔗 See also

[crypto.x25519.public](../core/crypto.x25519.public.md), [crypto.x25519.shared](../core/crypto.x25519.shared.md), [crypto.random](../core/crypto.random.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
