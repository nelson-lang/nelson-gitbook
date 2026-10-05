# crypto.aead.decrypt

Déchiffrement authentifié (XChaCha20-Poly1305).

## 📝 Syntaxe

- plaintext = crypto.aead.decrypt(key, nonce, boxed)
- plaintext = crypto.aead.decrypt(key, nonce, boxed, associatedData)

## 📥 Argument d'entrée

- key - vecteur uint8 de 32 octets ou 64 caractères hexadécimaux : clé secrète.
- nonce - vecteur uint8 de 24 octets ou 48 caractères hexadécimaux : unique par message pour une clé donnée (utilisez crypto.random).
- boxed - vecteur uint8 ou texte hexadécimal : le tag d'authentification de 16 octets suivi du texte chiffré, tel que produit par crypto.aead.encrypt.
- associatedData - vecteur uint8 (octets bruts) ou vecteur de caractères (octets UTF-8) : les mêmes données associées passées au chiffrement.

## 📤 Argument de sortie

- plaintext - vecteur ligne uint8 : les octets déchiffrés.

## 📄 Description


<b>crypto.aead.decrypt</b> vérifie le tag d'authentification et renvoie le message clair d'un message produit par <b>crypto.aead.encrypt</b>. 

Elle lève <b>Nelson:core:aeadAuthenticationFailed</b> lorsque la clé, le nonce, les données associées ou le message chiffré ont été modifiés ; n'utilisez jamais de données non authentifiées.

## Fonction(s) utilisée(s)

Monocypher

## 📚 Bibliographie

https://monocypher.org/, https://datatracker.ietf.org/doc/draft-irtf-cfrg-xchacha/

## 💡 Exemple

déchiffrer un message

```matlab
key = crypto.random(32);
nonce = crypto.random(24);
boxed = crypto.aead.encrypt(key, nonce, uint8([1 2 3 4]));
crypto.aead.decrypt(key, nonce, boxed)
```


## 🔗 Voir aussi

[crypto.aead.encrypt](../core/crypto_aead_encrypt.md), [crypto.random](../core/crypto_random.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
