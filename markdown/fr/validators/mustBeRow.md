# mustBeRow

Vérifie que la valeur est un vecteur ligne ou renvoie une erreur.

## Syntaxe

- mustBeRow(var)
- mustBeRow(var, argPosition)
- C++: void mustBeRow(const ArrayOfVector& args, int argPosition)

## Argument d'entrée

- var - a variable: all supported types and classes that implement isrow method.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>mustBeRow vérifie que la valeur est un vecteur ligne ou renvoie une erreur.</p>

## Exemple

```matlab
mustBeRow([1, 1])
mustBeRow([])
mustBeRow([1; 1])
```

## Voir aussi

[isrow](../types/isrow.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.10.0  | version initiale |

## Auteur

Allan CORNET
