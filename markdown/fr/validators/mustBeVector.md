# mustBeVector

Vérifie que la valeur est un vecteur ou renvoie une erreur.

## Syntaxe

- mustBeVector(var)
- mustBeVector(var, 'allow-all-empties')
- mustBeVector(var, argPosition)
- mustBeVector(var, 'allow-all-empties', argPosition)
- C++: void mustBeVector(const ArrayOfVector& args, bool allowsAllEmpties, int argPosition)

## Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent la méthode isvector.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>mustBeVector vérifie que la valeur est un vecteur ou renvoie une erreur.</p>

## Exemple

```matlab
mustBeVector(true)
mustBeVector([1 2])
mustBeVector([])
mustBeVector([], 'allows-all-empties')
```

## Voir aussi

[isvector](../elementary_functions/isvector.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
