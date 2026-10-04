# crypto.hmac

Compute a keyed-hash message authentication code (HMAC).

## 📝 Syntax

- hexa_mac = crypto.hmac(algorithm, key, message)
- hexa_mac = crypto.hmac(algorithm, key, filename, '-file')

## 📥 Input argument

- algorithm - a string: 'sha256' or 'sha512' (case-insensitive, 'sha-256' and 'sha-512' accepted).
- key - a uint8 vector (raw bytes) or a character vector (UTF-8 bytes): secret key, any length.
- message - a uint8 vector (raw bytes) or a character vector (UTF-8 bytes): authenticated content.
- filename - a string: existing file whose raw bytes are authenticated.
- '-file' - third argument is a filename.

## 📤 Output argument

- hexa_mac - a character vector: 64 (sha256) or 128 (sha512) lowercase hexadecimal characters.

## 📄 Description

<b>crypto.hmac</b> computes an HMAC (RFC 2104) with SHA-256 or SHA-512 over the exact bytes of a message, for example to authenticate an API request or a webhook payload.

A text key is used through its UTF-8 bytes; pass a uint8 vector for binary keys (a hexadecimal key text must be converted first). Keys longer than the hash block size are hashed first, as required by the RFC.

Compare the result with the expected value using a constant-time comparison when the check guards a security decision.

## Used function(s)

Monocypher, picoSHA2

## 📚 Bibliography

https://www.rfc-editor.org/rfc/rfc2104, https://www.rfc-editor.org/rfc/rfc4231

## 💡 Examples

RFC 4231 test case 2

```matlab
R = crypto.hmac('sha256', 'Jefe', 'what do ya want for nothing?')
R = crypto.hmac('sha512', 'Jefe', 'what do ya want for nothing?')
```

binary key and file message

```matlab
key = uint8(repmat(11, 1, 20));
filename = [tempdir(), 'hmac_example.txt'];
filewrite(filename, 'Hi There');
R = crypto.hmac('sha256', key, filename, '-file')
```

## 🔗 See also

[sha256](../core/sha256.md), [crypto.sha512](../core/crypto.sha512.md), [crypto.ed25519.sign](../core/crypto.ed25519.sign.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
