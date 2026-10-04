# crypto.x25519.public

Dérive une clé publique X25519.

## 📝 Syntaxe

- publicKey = crypto.x25519.public(secretKey)

## 📥 Argument d'entrée

- secretKey - vecteur uint8 de 32 octets ou 64 caractères hexadécimaux : clé privée.

## 📤 Argument de sortie

- publicKey - vecteur de caractères : 64 caractères hexadécimaux minuscules (32 octets).

## 📄 Description

<b>crypto.x25519.public</b> dérive la clé publique Curve25519 (RFC 7748) correspondant à une clé secrète de 32 octets.

Générez la clé secrète avec <b>crypto.random(32)</b> ou utilisez <b>crypto.x25519.keypair</b> pour obtenir les deux.

## Fonction(s) utilisée(s)

Monocypher

## 📚 Bibliographie

https://www.rfc-editor.org/rfc/rfc7748, https://monocypher.org/

## 💡 Exemple

dériver la clé publique d'une clé secrète

```matlab
sec = crypto.random(32, '-hex');
pub = crypto.x25519.public(sec)
```

## 🔗 Voir aussi

[crypto.x25519.shared](../core/crypto.x25519.shared.md), [crypto.x25519.keypair](../core/crypto.x25519.keypair.md), [crypto.random](../core/crypto.random.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
