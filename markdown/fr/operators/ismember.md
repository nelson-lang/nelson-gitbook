# ismember

Éléments d'un tableau présents dans un autre tableau.

## Syntaxe

- T = ismember(A, B)

## Argument d'entrée

- A - une variable
- B - une variable

## Argument de sortie

- T - résultat de ismember.

## Description

<p>T = ismember(A, B) renvoie un tableau logique indiquant où les éléments de A se trouvent dans B.</p>

## Exemple

```matlab
A = [50 30 40 20];
B = [20 40 40 40 60 80];
T = ismember(A, B)

T = ismember(["a","b","f"], ["b", "f", "c"])


```

## Voir aussi

[sort](../operators/sort.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
