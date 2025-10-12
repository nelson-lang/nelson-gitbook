# matches

Détermine si un motif correspond aux chaînes.

## Syntaxe

- res = matches(str, pattern)
- res = matches(str, pattern, 'IgnoreCase', true)

## Argument d'entrée

- str - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- pattern - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## Argument de sortie

- res - un booléen : vrai si les deux correspondent, sinon faux.

## Description

matches détermine si le motif correspond aux chaînes.

## Exemple

```matlab
matches("Nelson", 'nelSon')
matches("Nelson", 'Nelson')
str = ["yellow", "green", "blue", "brown"];
R = matches(str, ["yellow", "Brown"], 'IgnoreCase', true);


```

## Voir aussi

[strcmp](../string/strcmp.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
