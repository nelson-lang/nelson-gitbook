# IJV

Retourne les triplets I,J,V d'une matrice sparse.

## Syntaxe

- [iv, jv, vv, m, n, nzmax] = IJV(sp)

## Argument d'entrée

- sp - une matrice sparse.

## Argument de sortie

- iv - un vecteur : indices de lignes des éléments non nuls.
- jv - un vecteur : indices de colonnes des éléments non nuls.
- vv - un vecteur : valeurs des éléments non nuls.
- m - une valeur entière : nombre de lignes dans la matrice.
- n - une valeur entière : nombre de colonnes dans la matrice.
- nzmax - une valeur entière : taille réservée pour les éléments non nuls.

## Description

<p>
            IJV convertit une matrice sparse en son format COO.</p>

## Exemple

```matlab
sp = sparse(eye(3,3))
[IV, JV, VV, m, n, nzmax] = IJV(sp)
```

## Voir aussi

[sparse](../sparse/sparse.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
