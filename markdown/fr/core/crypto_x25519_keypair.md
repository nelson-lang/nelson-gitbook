# crypto.x25519.keypair

Génère une paire de clés X25519.

## 📝 Syntaxe

- [publicKey, secretKey] = crypto.x25519.keypair()

## 📥 Argument d'entrée

- (aucun) - cette fonction ne prend aucun argument d'entrée.

## 📤 Argument de sortie

- publicKey - vecteur de caractères : 64 caractères hexadécimaux minuscules (32 octets).
- secretKey - vecteur de caractères : 64 caractères hexadécimaux minuscules (32 octets aléatoires sûrs) ; à garder secret.

## 📄 Description


<b>crypto.x25519.keypair</b> génère une paire de clés Curve25519 aléatoire (RFC 7748) via <b>crypto.random</b>. Partagez la clé publique et gardez la clé secrète privée.

## Fonction(s) utilisée(s)

Monocypher

## 📚 Bibliographie

https://www.rfc-editor.org/rfc/rfc7748, https://monocypher.org/

## 💡 Exemple

générer une paire de clés

```matlab
[pub, sec] = crypto.x25519.keypair()
```


## 🔗 Voir aussi

[crypto.x25519.public](../core/crypto_x25519_public.md), [crypto.x25519.shared](../core/crypto_x25519_shared.md), [crypto.random](../core/crypto_random.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
