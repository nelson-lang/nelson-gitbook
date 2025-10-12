# strncmpi

Compare les n premiers caractères des chaînes (insensible à la casse).

## Syntaxe

- res = strncmpi(s1, s2, n)

## Argument d'entrée

- s1 - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- s2 - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- n - un entier : nombre de caractères à comparer.

## Argument de sortie

- res - un booléen : vrai si les deux sont identiques, sinon faux.

## Description

        strncmpi compare les n premiers caractères de deux chaînes (insensible à la casse).

## Exemple

```matlab
strncmpi('Nelson', 'nelSon', 3)
strncmpi('Nelson', 'Nelson', 3)

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
B = {'Handle', 'Struct'; 'Toolboxes', 'Modules'}
C = {'C', 'Contents'; 'Nel', 'son'}
strncmpi(A, B, 2)
strncmpi(A, C, 2)
strncmpi(C, 'C', 4)

```

## Voir aussi

[strncmp](../string/strncmp.md), [strcmp](../string/strcmp.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
