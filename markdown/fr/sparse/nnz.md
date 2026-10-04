# nnz

Retourne le nombre d'éléments non nuls.

## 📝 Syntaxe

- v = nnz(M)

## 📥 Argument d'entrée

- M - tableau numerique, logique ou caractere, sparse ou plein.

## 📤 Argument de sortie

- v - une valeur entière.

## 📄 Description

<b>nnz</b> retourne le nombre d'éléments non nuls dans une matrice.

Les entrees pleines peuvent etre multidimensionnelles. Les entrees sparse sont 2-D et peuvent stocker des valeurs double, single, logiques, double complexes ou single complexes.

Pour les matrices sparse, <b>nnz</b> compte seulement les valeurs reellement non nulles. Les valeurs nulles stockees sont ignorees.

## 💡 Exemples

```matlab
I = [1 2 3];
J = [3 1 2];
V = [32 42 53];
sp = sparse(I, J, V, 5, 4, 10)
size(sp)
nnz(sp)
nzmax(sp)
```

```matlab
S = sparse([1 2 1 2], [1 1 2 2], single([0 -0 complex(0, 0) complex(0, 2)]), 2, 2, 4);
n = nnz(S)
```

## 🔗 Voir aussi

[sparse](../sparse/sparse.md), [nzmax](../sparse/nzmax.md).

## 🕔 Historique

| Version | 📄 Description                                                   |
| ------- | ---------------------------------------------------------------- |
| 2.0.0   | comportement sparse single et valeurs nulles stockees documentes |
| 1.0.0   | version initiale                                                 |

<!--
## 👤 Auteur

Allan CORNET
-->
