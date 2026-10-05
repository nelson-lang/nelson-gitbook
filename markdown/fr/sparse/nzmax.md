# nzmax

Taille réservée pour les éléments non nuls.

## 📝 Syntaxe

- v = nzmax(M)

## 📥 Argument d'entrée

- M - tableau numerique, logique ou caractere, sparse ou plein.

## 📤 Argument de sortie

- v - une valeur entière.

## 📄 Description


<b>nzmax</b> retourne la quantité de stockage allouée pour les éléments non nuls. 

Pour les tableaux pleins, <b>nzmax</b> retourne <b>numel(M)</b>. Pour les matrices sparse, il retourne la capacite de stockage sparse reservee, qui peut etre superieure a <b>nnz(M)</b>. 

Les matrices sparse double, single, logiques, double complexes et single complexes sont prises en charge. Les valeurs nulles stockees peuvent contribuer a la capacite reservee meme si <b>nnz</b> les ignore.

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
[nnz(S), nzmax(S)]
```


## 🔗 Voir aussi

[sparse](../sparse/sparse.md), [nnz](../sparse/nnz.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | comportement sparse single et stockage reserve documentes |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
