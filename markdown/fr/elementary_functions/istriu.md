# istriu

Checks if matrix is upper triangular.

## Syntaxe

- tf = istriu(M)

## Argument d'entrée

- M - a numeric array

## Argument de sortie

- tf - logical: result of 'istriu'.

## Description

<p>
            istriu returns an scalar logical if entry is upper triangular.</p>

## Exemple

```matlab
A = eye(3, 3);
R = istriu(A)
R = istriu(A(:,1))
```

## Voir aussi

[isdiag](../elementary_functions/isdiag.md), [istril](../elementary_functions/istril.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
