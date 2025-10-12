# mustBeLessThan

Vérifie que la valeur est inférieure à une autre valeur ou signale une erreur.

## Syntaxe

- mustBeLessThan(var, c)
- mustBeLessThan(var, c, argPosition)
- C++: void mustBeLessThan(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## Argument d'entrée

- var - une variable : tableau logique ou numérique.
- c - une variable : valeur numérique scalaire.
- argPosition - un entier positif : position de l'argument d'entrée.

## Description

<p>mustBeLessThan vérifie que la valeur est inférieure à une autre valeur ou signale une erreur.</p>

## Exemple

```matlab
mustBeLessThan(1, 0)
mustBeLessThan(1, 2)
```

## Voir aussi

[mustBeNumeric](../validators/mustBeNumeric.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
