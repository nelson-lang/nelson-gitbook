# crc32

Calcul du CRC32.

## 📝 Syntaxe

- hexa_hash = crc32(str)
- hexa_hash = crc32(filename)
- hexa_hash = crc32(str, '-file')
- hexa_hash = crc32(str, '-string')

## 📥 Argument d'entrée

- str - chaîne ou octets : données à hacher
- filename - une chaîne : nom de fichier existant : le contenu du fichier sera haché.
- '-file' or '-string' - force le hachage comme contenu de fichier ou de chaîne.

## 📤 Argument de sortie

- hexa_hash - entier : valeur CRC32

## 📄 Description

Calcule la valeur CRC32 d'une chaîne de caractères ou d'un fichier.

## 💡 Exemples

```matlab
R = crc32('Nelson')
```

```matlab
R = crc32({'Hello', 'World'})
```

```matlab
R = crc32(["Hello"; "World"])
```

```matlab
R = crc32([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'])
```

```matlab
R = crc32([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'], '-file')
```

```matlab
R = crc32([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'], '-string')
```

## 🔗 Voir aussi

[sha256](../core/sha256.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

## 👤 Auteur

Allan CORNET
