# convertCharsToStrings

Convertit des tableaux de caractères en tableaux de chaînes.

## Syntaxe

- S = convertCharsToStrings(C)
- [B1, B2, ..., BN] = convertCharsToStrings(A1, A2, ..., AN)

## Argument d'entrée

- C - si C est un tableau de caractères, la sortie S sera convertie en tableau de chaînes.
- A1, A2, ..., AN - variables à convertir en tableau de chaînes si elles sont des tableaux de caractères.

## Argument de sortie

- S - un tableau de chaînes ou la variable inchangée
- B1, B2, ..., BN - variables converties en tableau de chaînes si elles sont des tableaux de caractères ou des cellules de tableaux de caractères.

## Description

<p>
            convertCharsToStrings convertit des tableaux de caractères en tableaux de chaînes.</p>

## Exemple

```matlab
[A, B, C, D] = convertCharsToStrings("one", 2, 'three', {'four' ; 'NaN' ;'five'})
R = convertCharsToStrings(['Nelson' ; '  is  '; '  good'])
```

## Voir aussi

[convertStringsToChars](../string/convertStringsToChars.md), [cellstr](../data_structures/cellstr.md), [string](../string/string.md), [char](../string/char.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
