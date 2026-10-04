# crypto.blake2b

Get BLAKE2b hash, optionally keyed.

## 📝 Syntax

- hexa_hash = crypto.blake2b(message)
- hexa_hash = crypto.blake2b(message, key)
- hexa_hash = crypto.blake2b(message, key, digestSize)
- hexa_hash = crypto.blake2b(filename, key, digestSize, '-file')

## 📥 Input argument

- message - a uint8 vector (raw bytes) or a character vector (UTF-8 bytes): content to hash.
- filename - a string: existing file whose raw bytes are hashed.
- key - a uint8 vector (raw bytes) or a character vector (UTF-8 bytes) of at most 64 bytes, or [] for an unkeyed hash (default).
- digestSize - an integer between 1 and 64: digest length in bytes (default: 64).
- '-file' - first argument is a filename (always the last argument).

## 📤 Output argument

- hexa_hash - a character vector: 2 \* digestSize lowercase hexadecimal characters.

## 📄 Description

<b>crypto.blake2b</b> computes a BLAKE2b digest (RFC 7693): a fast cryptographic hash with a configurable output size. With a key it acts as a message authentication code without the HMAC construction.

## Used function(s)

Monocypher

## 📚 Bibliography

https://www.rfc-editor.org/rfc/rfc7693, https://monocypher.org/

## 💡 Examples

```matlab
R = crypto.blake2b('abc')
R = crypto.blake2b('abc', [], 20)
R = crypto.blake2b('abc', 'my secret key', 32)
```

hash a file

```matlab
filename = [tempdir(), 'blake2b_example.txt'];
filewrite(filename, 'abc');
R = crypto.blake2b(filename, [], 64, '-file')
```

## 🔗 See also

[crypto.sha512](../core/crypto.sha512.md), [crypto.hmac](../core/crypto.hmac.md), [crypto.argon2](../core/crypto.argon2.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
