# mustBeMatrix

Vérifie que la valeur est une matrice ou renvoie une erreur.

## Syntaxe

- mustBeMatrix(var)
- mustBeMatrix(var, argPosition)
- C++: void mustBeMatrix(const ArrayOfVector& args, int argPosition)

## Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent la méthode ismatrix.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>mustBeMatrix vérifie que la valeur est une matrice ou renvoie une erreur.</p>

## Exemple

```matlab
mustBeMatrix(true)
mustBeMatrix([])
mustBeMatrix(ones(3, 2, 4))
```

## Voir aussi

[ismatrix](../types/ismatrix.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.10.0  | version initiale |

## Auteur

Allan CORNET
