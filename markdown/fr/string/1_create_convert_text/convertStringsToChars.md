# convertStringsToChars

Convertit des tableaux de chaînes en tableaux de caractères.

## 📝 Syntaxe

- C = convertStringsToChars(S)
- [B1, B2, ..., BN] = convertStringsToChars(A1, A2, ..., AN)

## 📥 Argument d'entrée

- S - si S est un tableau de chaînes, la sortie C sera convertie en cellule de chaînes ou en vecteur de caractères (si S est scalaire).
- A1, A2, ..., AN - variables à convertir en tableau de caractères si elles sont des tableaux de chaînes.

## 📤 Argument de sortie

- C - un tableau de caractères ou la variable inchangée
- B1, B2, ..., BN - variables converties en tableau de caractères si elles sont des tableaux de chaînes.

## 📄 Description


<b>convertStringsToChars</b> convertit des tableaux de chaînes en tableaux de caractères.

## 💡 Exemple



```matlab
A = convertStringsToChars("Nelson")
A = convertStringsToChars(["Nelson", string(NaN)])
```


## 🔗 Voir aussi

[convertCharsToStrings](../../string/1_create_convert_text/convertCharsToStrings.md), [cellstr](../../data_structures/cellstr.md), [string](../../string/1_create_convert_text/string.md), [char](../../string/1_create_convert_text/char.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
