# mustBeInteger

Vérifie que la valeur est entière ou renvoie une erreur.

## Syntaxe

- mustBeInteger(var)
- mustBeInteger(var, argPosition)
- C++: void mustBeInteger(const ArrayOfVector& args, int argPosition)

## Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent isnumeric, islogical, all, isreal, eq et floor.
- argPosition - un entier positif : position de l'argument d'entrée.

## Description

<p>mustBeInteger vérifie que la valeur est entière ou renvoie une erreur.</p>

## Exemple

```matlab
mustBeInteger(-1)
mustBeInteger(Inf)
```

## Voir aussi

[mustBeNumeric](../validators/mustBeNumeric.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
