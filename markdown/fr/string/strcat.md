# strcat

concatène des chaînes horizontalement.

## Syntaxe

- res = strcat(s1, s2, ..., sN)

## Argument d'entrée

- s1, s2, ..., sN - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## Argument de sortie

- res - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## Description

<p>
            strcat concatène les chaînes horizontalement.</p>

<p>Si toutes les entrées sont des tableaux de caractères, alors res est un tableau de caractères.</p>

<p>Si une entrée est un tableau de chaînes, alors res est un tableau de chaînes.</p>

<p>Si une entrée est un tableau de cellules, et qu'aucune n'est un tableau de chaînes, alors res est un tableau de cellules de vecteurs de caractères.</p>

<p>Pour les entrées de tableau de cellules et de chaînes, strcat ne supprime pas les espaces blancs à la fin.</p>

<p>Pour les entrées de tableau de caractères, strcat supprime les caractères d'espacement ASCII à la fin.</p>

## Exemple

```matlab
strcat("Nelson", 'nelSon')
A = {'abcde','fghi'};
B = {'jkl','mn'};
C = strcat(A, B)
```

## Voir aussi

[append](../string/append.md), [join](../string/join.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
