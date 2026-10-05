# convertCharsToStrings

Convertit des tableaux de caractères en tableaux de chaînes.

## 📝 Syntaxe

- S = convertCharsToStrings(C)
- [B1, B2, ..., BN] = convertCharsToStrings(A1, A2, ..., AN)

## 📥 Argument d'entrée

- C - si C est un tableau de caractères, la sortie S sera convertie en tableau de chaînes.
- A1, A2, ..., AN - variables à convertir en tableau de chaînes si elles sont des tableaux de caractères.

## 📤 Argument de sortie

- S - un tableau de chaînes ou la variable inchangée
- B1, B2, ..., BN - variables converties en tableau de chaînes si elles sont des tableaux de caractères ou des cellules de tableaux de caractères.

## 📄 Description


<b>convertCharsToStrings</b> convertit des tableaux de caractères en tableaux de chaînes.

## 💡 Exemple



```matlab
[A, B, C, D] = convertCharsToStrings("one", 2, 'three', {'four' ; 'NaN' ;'five'})
R = convertCharsToStrings(['Nelson' ; '  is  '; '  good'])
```


## 🔗 Voir aussi

[convertStringsToChars](../../string/1_create_convert_text/convertStringsToChars.md), [cellstr](../../data_structures/cellstr.md), [string](../../string/1_create_convert_text/string.md), [char](../../string/1_create_convert_text/char.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
