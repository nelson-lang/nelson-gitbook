# crypto.random

Get cryptographically secure random bytes.

## 📝 Syntax

- bytes = crypto.random(n)
- hexa = crypto.random(n, '-hex')

## 📥 Input argument

- n - an integer between 1 and 1048576: number of random bytes.
- '-hex' - return the bytes as a hexadecimal character vector instead of uint8.

## 📤 Output argument

- bytes - a uint8 row vector of n secure random bytes.
- hexa - a character vector: 2 \* n lowercase hexadecimal characters.

## 📄 Description

<b>crypto.random</b> returns random bytes from the operating system secure random source (<b>BCryptGenRandom</b> on Windows, <b>/dev/urandom</b> on other systems). Use it for keys, nonces and salts. Unlike <b>rand</b>, its output is unpredictable and must not be seeded.

## 💡 Example

```matlab
key = crypto.random(32)
nonce = crypto.random(24, '-hex')
```

## 🔗 See also

[crypto.aead.encrypt](../core/crypto.aead.encrypt.md), [crypto.x25519.keypair](../core/crypto.x25519.keypair.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
