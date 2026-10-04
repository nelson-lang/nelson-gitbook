# crypto.x25519.shared

Calcule un secret partagé X25519.

## 📝 Syntaxe

- sharedSecret = crypto.x25519.shared(secretKey, peerPublicKey)

## 📥 Argument d'entrée

- secretKey - vecteur uint8 de 32 octets ou 64 caractères hexadécimaux : votre clé privée.
- peerPublicKey - vecteur uint8 de 32 octets ou 64 caractères hexadécimaux : clé publique de l'autre partie.

## 📤 Argument de sortie

- sharedSecret - vecteur de caractères : 64 caractères hexadécimaux minuscules (32 octets).

## 📄 Description

<b>crypto.x25519.shared</b> calcule le secret partagé Diffie-Hellman (RFC 7748) à partir de votre clé secrète et d'une clé publique de pair. Les deux parties obtiennent la même valeur.

N'utilisez pas le secret partagé brut comme clé de chiffrement : hachez-le d'abord, par exemple avec <b>crypto.blake2b(shared, [], 32)</b>.

## Fonction(s) utilisée(s)

Monocypher

## 📚 Bibliographie

https://www.rfc-editor.org/rfc/rfc7748, https://monocypher.org/

## 💡 Exemple

les deux pairs obtiennent le même secret

```matlab
[aPub, aSec] = crypto.x25519.keypair();
[bPub, bSec] = crypto.x25519.keypair();
isequal(crypto.x25519.shared(aSec, bPub), crypto.x25519.shared(bSec, aPub))
```

## 🔗 Voir aussi

[crypto.x25519.public](../core/crypto.x25519.public.md), [crypto.x25519.keypair](../core/crypto.x25519.keypair.md), [crypto.aead.encrypt](../core/crypto.aead.encrypt.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
