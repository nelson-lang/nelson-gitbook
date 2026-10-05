# crypto.argon2

Argon2 password hashing and key derivation.

## 📝 Syntax

- hexa\_hash = crypto.argon2(password, salt)
- hexa\_hash = crypto.argon2(password, salt, name, value, ...)

## 📥 Input argument

- password - a uint8 vector (raw bytes) or a character vector (UTF-8 bytes): secret to hash.
- salt - a uint8 vector (raw bytes) or a character vector (UTF-8 bytes): at least 8 bytes, 16 random bytes recommended, unique per password.
- 'Variant' - 'argon2id' (default, recommended), 'argon2i' or 'argon2d'.
- 'Memory' - memory cost in KiB, at least 8 times the number of lanes (default: 65536, that is 64 MiB).
- 'Passes' - number of iterations, at least 1 (default: 3).
- 'Lanes' - degree of parallelism of the algorithm, at least 1 (default: 1); the computation itself is single threaded.
- 'Length' - output length in bytes, between 4 and 1024 (default: 32).
- 'Key' - optional secret key (pepper) as uint8 or text, mixed into the hash.
- 'AssociatedData' - optional associated data as uint8 or text, mixed into the hash.

## 📤 Output argument

- hexa\_hash - a character vector: 2 \* Length lowercase hexadecimal characters.

## 📄 Description


<b>crypto.argon2</b> computes an Argon2 hash (RFC 9106), the memory-hard function recommended for password storage and for deriving encryption keys from passphrases. Store the salt and the parameters next to the hash: verifying a password means recomputing the hash with the same inputs and comparing. 

The defaults (argon2id, 64 MiB, 3 passes, 1 lane) take a fraction of a second on a desktop machine; raise <b>Memory</b> or <b>Passes</b> for stronger protection, lower them only for tests. The work area is allocated for each call and wiped afterwards.

## Used function(s)

Monocypher

## 📚 Bibliography

https://www.rfc-editor.org/rfc/rfc9106, https://monocypher.org/

## 💡 Examples

hash a passphrase (small parameters for the example)

```matlab
R = crypto.argon2('correct horse battery staple', 'salt-of-16-bytes', 'Memory', 1024, 'Passes', 2)
```
RFC 9106 argon2id test vector

```matlab
password = uint8(repmat(1, 1, 32));
salt = uint8(repmat(2, 1, 16));
R = crypto.argon2(password, salt, 'Memory', 32, 'Passes', 3, 'Lanes', 4, 'Key', uint8(repmat(3, 1, 8)), 'AssociatedData', uint8(repmat(4, 1, 12)))
```


## 🔗 See also

[crypto.blake2b](../core/crypto_blake2b.md), [crypto.hmac](../core/crypto_hmac.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
