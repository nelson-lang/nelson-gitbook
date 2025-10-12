# nzmax

Taille réservée pour les éléments non nuls.

## Syntaxe

- v = nzmax(M)

## Argument d'entrée

- M - une matrice : double ou logique, sparse ou non.

## Argument de sortie

- v - une valeur entière.

## Description

<p>
            nzmax retourne la quantité de stockage allouée pour les éléments non nuls.</p>

## Exemple

```matlab
I = [1 2 3];
J = [3 1 2];
V = [32 42 53];
sp = sparse(I, J, V, 5, 4, 10)
size(sp)
nnz(sp)
nzmax(sp)
```

## Voir aussi

[sparse](../sparse/sparse.md), [nnz](../sparse/nzmax.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
