# crypto.random

Génère des octets aléatoires cryptographiquement sûrs.

## 📝 Syntaxe

- bytes = crypto.random(n)
- hexa = crypto.random(n, '-hex')

## 📥 Argument d'entrée

- n - entier entre 1 et 1048576 : nombre d'octets aléatoires.
- '-hex' - renvoie les octets sous forme de chaîne hexadécimale au lieu d'un uint8.

## 📤 Argument de sortie

- bytes - vecteur ligne uint8 de n octets aléatoires sûrs.
- hexa - vecteur de caractères : 2 \* n caractères hexadécimaux minuscules.

## 📄 Description


<b>crypto.random</b> renvoie des octets issus de la source aléatoire sécurisée du système d'exploitation (<b>BCryptGenRandom</b> sous Windows, <b>/dev/urandom</b> ailleurs). Utilisez-la pour les clés, les nonces et les sels. Contrairement à <b>rand</b>, sa sortie est imprévisible et ne doit pas être initialisée par une graine.

## 💡 Exemple



```matlab
key = crypto.random(32)
nonce = crypto.random(24, '-hex')
```


## 🔗 Voir aussi

[crypto.aead.encrypt](../core/crypto_aead_encrypt.md), [crypto.x25519.keypair](../core/crypto_x25519_keypair.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
