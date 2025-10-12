# mustBeFloat

Vérifie que la valeur est en virgule flottante ou renvoie une erreur.

## Syntaxe

- mustBeFloat(var)
- mustBeFloat(var, argPosition)
- C++: void mustBeFloat(const ArrayOfVector& args, int argPosition)

## Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent la méthode isfloat.
- argPosition - un entier positif : position de l'argument d'entrée.

## Description

<p>mustBeFloat vérifie que la valeur est en virgule flottante (single ou double) ou renvoie une erreur.</p>

## Exemple

```matlab
mustBeFloat(true)
mustBeFloat([])
mustBeFloat(single([true false]))
```

## Voir aussi

[isfloat](../types/isfloat.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
