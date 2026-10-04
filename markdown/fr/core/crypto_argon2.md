# crypto.argon2

Hachage de mot de passe et dérivation de clé Argon2.

## 📝 Syntaxe

- hexa_hash = crypto.argon2(password, salt)
- hexa_hash = crypto.argon2(password, salt, name, value, ...)

## 📥 Argument d'entrée

- password - vecteur uint8 (octets bruts) ou vecteur de caractères (octets UTF-8) : secret à hacher.
- salt - vecteur uint8 (octets bruts) ou vecteur de caractères (octets UTF-8) : au moins 8 octets, 16 octets aléatoires recommandés, unique par mot de passe.
- 'Variant' - 'argon2id' (défaut, recommandé), 'argon2i' ou 'argon2d'.
- 'Memory' - coût mémoire en KiB, au moins 8 fois le nombre de voies (défaut : 65536, soit 64 MiB).
- 'Passes' - nombre d'itérations, au moins 1 (défaut : 3).
- 'Lanes' - degré de parallélisme de l'algorithme, au moins 1 (défaut : 1) ; le calcul lui-même est mono-thread.
- 'Length' - longueur de sortie en octets, entre 4 et 1024 (défaut : 32).
- 'Key' - clé secrète optionnelle (poivre) en uint8 ou texte, mélangée au hachage.
- 'AssociatedData' - données associées optionnelles en uint8 ou texte, mélangées au hachage.

## 📤 Argument de sortie

- hexa_hash - vecteur de caractères : 2 \* Length caractères hexadécimaux minuscules.

## 📄 Description

<b>crypto.argon2</b> calcule un hachage Argon2 (RFC 9106), la fonction à coût mémoire recommandée pour stocker des mots de passe et dériver des clés de chiffrement à partir de phrases secrètes. Conservez le sel et les paramètres à côté du hachage : vérifier un mot de passe consiste à recalculer le hachage avec les mêmes entrées et à comparer.

Les valeurs par défaut (argon2id, 64 MiB, 3 passes, 1 voie) prennent une fraction de seconde sur une machine de bureau ; augmentez <b>Memory</b> ou <b>Passes</b> pour une protection plus forte, ne les réduisez que pour les tests. La zone de travail est allouée à chaque appel puis effacée.

## Fonction(s) utilisée(s)

Monocypher

## 📚 Bibliographie

https://www.rfc-editor.org/rfc/rfc9106, https://monocypher.org/

## 💡 Exemples

hacher une phrase secrète (petits paramètres pour l'exemple)

```matlab
R = crypto.argon2('correct horse battery staple', 'salt-of-16-bytes', 'Memory', 1024, 'Passes', 2)
```

vecteur de test argon2id de la RFC 9106

```matlab
password = uint8(repmat(1, 1, 32));
salt = uint8(repmat(2, 1, 16));
R = crypto.argon2(password, salt, 'Memory', 32, 'Passes', 3, 'Lanes', 4, 'Key', uint8(repmat(3, 1, 8)), 'AssociatedData', uint8(repmat(4, 1, 12)))
```

## 🔗 Voir aussi

[crypto.blake2b](../core/crypto.blake2b.md), [crypto.hmac](../core/crypto.hmac.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
