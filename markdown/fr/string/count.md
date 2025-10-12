# count

Calcule le nombre d'occurrences d'un motif.

## Syntaxe

- nbocc = count(str, pattern)
- nbocc = count(str, pattern,'IgnoreCase', true)
- nbocc = count(str, pattern,'IgnoreCase', false)

## Argument d'entrée

- str - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- pattern - une chaîne, un tableau de chaînes ou une cellule de chaînes à rechercher.

## Argument de sortie

- nbocc - une matrice d'entiers.

## Description

        count calcule le nombre d'occurrences d'un motif.

## Exemple

```matlab

str = 'To make a mountain out of a molehill';
k = count(str, 'hill')
k = count(str, 'molehill')
k = count(str, 'Hill', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = count(A, 'son')

A = ["Nel", "son"; "Nelson", "Modules"]
k = count(A, 'son')


```

## Voir aussi

[startsWith](../string/startsWith.md), [endsWith](../string/endsWith.md), [contains](../string/contains.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
