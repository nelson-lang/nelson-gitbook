# issorted

Détermine si un tableau est trié.

## Syntaxe

- tf = issorted(A)
- tf = issorted(A, dim)
- tf = issorted(..., direction)
- tf = issorted(A, 'rows')

## Argument d'entrée

- A - une variable Nelson (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).
- dim - Dimension le long de laquelle opérer : entier positif scalaire.
- direction - Direction du tri : 'ascend' (par défaut) ou 'descend'.
- 'rows' - renvoie vrai si les éléments de la première colonne d'une matrice sont triés.

## Argument de sortie

- tf - un logique : vrai si le tableau est trié.

## Description

<p>
                        tf = issorted(A) renvoie vrai si les éléments de A sont triés par ordre croissant, et faux sinon.</p>

## Exemple

```matlab
x = [1 2 3 4];
issorted(x) % returns true
x = [1 3 2 4];
issorted(x) % returns false

% Check if a matrix is sorted by rows
A = [1 2 3; 4 5 6; 7 8 9];
issorted(A, 'rows') % returns true
A = [1 2 3; 7 8 9; 4 5 6];
issorted(A, 'rows') % returns false
```

## Voir aussi

[sort](../data_analysis/sort.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
