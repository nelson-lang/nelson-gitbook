# crypto.ed25519.sign

Calcule une signature Ed25519.

## 📝 Syntaxe

- signature = crypto.ed25519.sign(message, seed)
- [signature, publicKey] = crypto.ed25519.sign(message, seed)
- [signature, publicKey] = crypto.ed25519.sign(filename, seed, '-file')

## 📥 Argument d'entrée

- message - vecteur uint8 (octets bruts) ou vecteur de caractères (octets UTF-8) : contenu à signer.
- filename - chaîne : fichier existant dont les octets bruts sont signés.
- seed - vecteur uint8 de 32 octets ou 64 caractères hexadécimaux : graine privée Ed25519.
- '-file' - le premier argument est un nom de fichier.

## 📤 Argument de sortie

- signature - vecteur de caractères : 128 caractères hexadécimaux minuscules (64 octets).
- publicKey - vecteur de caractères : 64 caractères hexadécimaux minuscules (32 octets), clé publique dérivée de la graine.

## 📄 Description

<b>crypto.ed25519.sign</b> calcule une signature Ed25519 pure (RFC 8032, section 5.1) sur les octets exacts d'un message. Les signatures sont déterministes : la même graine et le même message donnent toujours la même signature.

La graine est la clé privée de 32 octets. Elle doit rester secrète : quiconque la détient peut signer. Cette fonction est destinée aux tests, au développement local et aux registres de paquets privés ; la clé publique renvoyée en second résultat est la valeur à distribuer aux vérificateurs.

## Fonction(s) utilisée(s)

Monocypher

## 📚 Bibliographie

https://www.rfc-editor.org/rfc/rfc8032, https://monocypher.org/

## 💡 Exemples

vecteur de test 3 de la RFC 8032

```matlab
seed = 'c5aa8df43f9f837bedb7442f31dcb7b166d38535076f094b85ce3a2e0b4458f7';
[signature, publicKey] = crypto.ed25519.sign(uint8([175, 130]), seed)
```

signer un message texte et le vérifier

```matlab
seed = 'c5aa8df43f9f837bedb7442f31dcb7b166d38535076f094b85ce3a2e0b4458f7';
[signature, publicKey] = crypto.ed25519.sign('Nelson', seed);
tf = crypto.ed25519.verify('Nelson', signature, publicKey)
```

## 🔗 Voir aussi

[crypto.ed25519.verify](../core/crypto.ed25519.verify.md), [sha256](../core/sha256.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
