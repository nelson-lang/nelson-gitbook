# crypto.sha512

Calcule le hash SHA-512.

## 📝 Syntaxe

- hexa_hash = crypto.sha512(str)
- hexa_hash = crypto.sha512(filename)
- hexa_hash = crypto.sha512(bytes)
- hexa_hash = crypto.sha512(str, '-file')
- hexa_hash = crypto.sha512(str, '-string')

## 📥 Argument d'entrée

- str - vecteur de caractères, cellule de chaînes ou tableau de chaînes : les octets UTF-8 du texte sont hachés.
- filename - chaîne : nom de fichier existant : les octets bruts du fichier sont hachés.
- bytes - vecteur uint8 : octets bruts à hacher.
- '-file' ou '-string' - force à traiter comme fichier ou comme contenu de chaîne (par défaut, un texte désignant un fichier existant est haché comme fichier).

## 📤 Argument de sortie

- hexa_hash - vecteur de caractères, cellule de chaînes ou tableau de chaînes : 128 caractères hexadécimaux minuscules par entrée (vide si un fichier ne peut pas être lu).

## 📄 Description

<b>crypto.sha512</b> calcule le condensé SHA-512 (FIPS 180-4) d'un texte, d'octets bruts ou d'un fichier, avec les mêmes conventions que <b>sha256</b>.

## Fonction(s) utilisée(s)

Monocypher

## 📚 Bibliographie

https://monocypher.org/

## 💡 Exemples

```matlab
R = crypto.sha512('abc')
R = crypto.sha512(uint8('abc'))
R = crypto.sha512({'Hello', 'World'})
```

hacher un fichier

```matlab
filename = [tempdir(), 'sha512_example.txt'];
filewrite(filename, 'abc');
R = crypto.sha512(filename, '-file')
```

## 🔗 Voir aussi

[sha256](../core/sha256.md), [crypto.hmac](../core/crypto.hmac.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
