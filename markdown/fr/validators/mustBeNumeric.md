# mustBeNumeric

Vérifie que la valeur est numérique ou renvoie une erreur.

## Syntaxe

- mustBeNumeric(var)
- mustBeNumeric(var, argPosition)
- C++: void mustBeNumeric(const ArrayOfVector& args, int argPosition)

## Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent la méthode isnumeric.
- argPosition - un entier positif : position de l'argument d'entrée.

## Description

<p>mustBeNumeric vérifie que la valeur est numérique ou renvoie une erreur.</p>

<p>Les valeurs vides sont ignorées.</p>

## Exemple

```matlab
mustBeNumeric(1)
mustBeNumeric([])
mustBeNumeric({1})
```

## Voir aussi

[isnumeric](../types/isnumeric.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
