# crypto.aead.encrypt

Chiffrement authentifié (XChaCha20-Poly1305).

## 📝 Syntaxe

- boxed = crypto.aead.encrypt(key, nonce, plaintext)
- boxed = crypto.aead.encrypt(key, nonce, plaintext, associatedData)

## 📥 Argument d'entrée

- key - vecteur uint8 de 32 octets ou 64 caractères hexadécimaux : clé secrète.
- nonce - vecteur uint8 de 24 octets ou 48 caractères hexadécimaux : unique par message pour une clé donnée (utilisez crypto.random).
- plaintext - vecteur uint8 (octets bruts) ou vecteur de caractères (octets UTF-8) : contenu à chiffrer.
- associatedData - vecteur uint8 (octets bruts) ou vecteur de caractères (octets UTF-8) : données optionnelles authentifiées mais non chiffrées ; la même valeur doit être donnée au déchiffrement.

## 📤 Argument de sortie

- boxed - vecteur ligne uint8 : le tag d'authentification de 16 octets suivi du texte chiffré (de même longueur que le message clair).

## 📄 Description

<b>crypto.aead.encrypt</b> chiffre et authentifie un message avec XChaCha20-Poly1305, un schéma de chiffrement authentifié à clé de 256 bits et nonce de 192 bits.

Le nonce doit être unique pour chaque message chiffré avec la même clé ; un nonce répété casse la sécurité. Générez-le avec <b>crypto.random(24)</b> et stockez-le à côté du message chiffré (il n'est pas secret).

## Fonction(s) utilisée(s)

Monocypher

## 📚 Bibliographie

https://monocypher.org/, https://datatracker.ietf.org/doc/draft-irtf-cfrg-xchacha/

## 💡 Exemple

chiffrer puis déchiffrer

```matlab
key = crypto.random(32);
nonce = crypto.random(24);
boxed = crypto.aead.encrypt(key, nonce, 'a secret message');
char(crypto.aead.decrypt(key, nonce, boxed))
```

## 🔗 Voir aussi

[crypto.aead.decrypt](../core/crypto.aead.decrypt.md), [crypto.random](../core/crypto.random.md), [crypto.x25519.shared](../core/crypto.x25519.shared.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
