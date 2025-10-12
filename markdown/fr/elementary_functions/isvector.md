# isvector

Checks input is vector.

## Syntaxe

- tf = isvector(M)

## Argument d'entrée

- M - a variable

## Argument de sortie

- tf - logical: result of 'isvector'.

## Description

<p>
            isvector returns an scalar logical if entry is an vector.</p>

## Exemple

```matlab
A = eye(3, 3);
R = isvector(A)
R = isvector(A(:,1))
```

## Voir aussi

[isempty](../elementary_functions/isempty.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
