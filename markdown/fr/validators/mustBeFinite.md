# mustBeFinite

Vérifie que la valeur est finie ou renvoie une erreur.

## Syntaxe

- mustBeFinite(var)
- mustBeFinite(var, argPosition)
- C++: void mustBeFinite(const ArrayOfVector& args, int argPosition)

## Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent les méthodes isfinite.
- argPosition - un entier positif : position de l'argument d'entrée.

## Description

<p>mustBeFinite vérifie que la valeur est finie ou renvoie une erreur.</p>

<p>Les valeurs vides sont ignorées.</p>

## Exemple

```matlab
mustBeFinite(1)
mustBeFinite(Inf)
```

## Voir aussi

[isfinite](../elementary_functions/isfinite.md), [isempty](../types/isempty.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
