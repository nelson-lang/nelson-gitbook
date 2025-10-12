# startsWith

Vérifie si une chaîne commence par un motif.

## Syntaxe

- tf = startsWith(str, pattern)
- tf = startsWith(str, pattern,'IgnoreCase', true)
- tf = startsWith(str, pattern,'IgnoreCase', false)

## Argument d'entrée

- str - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- pattern - une chaîne à rechercher.

## Argument de sortie

- tf - une matrice de booléens.

## Description

        startsWith renvoie true si str commence par pattern.

## Exemple

```matlab

str = 'To make a mountain out of a molehill';
k = startsWith (str, 'in')
k = startsWith (str, 'to')
k = startsWith (str, 'to', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = startsWith(A, 'Nel')

A = ["Nel", "son"; "Nelson", "Modules"];
k = startsWith(A, "Nel")


```

## Voir aussi

[endsWith](../string/endsWith.md), [contains](../string/contains.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
