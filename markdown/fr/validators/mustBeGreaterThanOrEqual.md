# mustBeGreaterThanOrEqual

Vérifie que la valeur est supérieure ou égale à une autre valeur ou signale une erreur.

## Syntaxe

- mustBeGreaterThanOrEqual(var, c)
- mustBeGreaterThanOrEqual(var, c, argPosition)
- C++: void mustBeGreaterThanOrEqual(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## Argument d'entrée

- var - une variable : tableau logique ou numérique.
- c - une variable : valeur numérique scalaire.
- argPosition - un entier positif : position de l'argument d'entrée.

## Description

<p>mustBeGreaterThanOrEqual vérifie que la valeur est supérieure ou égale à une autre valeur ou signale une erreur.</p>

## Exemple

```matlab
mustBeGreaterThanOrEqual(1, 0)
mustBeGreaterThanOrEqual([2 3 4],5)
```

## Voir aussi

[mustBeNumeric](../validators/mustBeNumeric.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
