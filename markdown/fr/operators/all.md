# all

all of the elements of a matrix satisfy some condition.

## Syntaxe

- R = all(M)
- R = all(M, dim)
- R = all(M, 'all')

## Argument d'entrée

- M - a matrix.
- dim - a integer value: dimension along it works.
- 'all' - tests over all elements of M.

## Argument de sortie

- R - a logical matrix.

## Description

<p>
            all returns true if all of the elements of a matrix satisfy some condition.</p>

## Exemple

```matlab
all([33, 22; 11, 0])
all([33, 22; 11, 0], 2)
```

## Voir aussi

[any](../logical/any.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
