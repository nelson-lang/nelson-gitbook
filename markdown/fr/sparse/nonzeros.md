# nonzeros

Elements non nuls d'une matrice.

## 📝 Syntaxe

- v = nonzeros(A)

## 📥 Argument d'entrée

- A - tableau numerique, logique ou caractere, y compris les matrices sparse numeriques et logiques.

## 📤 Argument de sortie

- v - vecteur colonne dense contenant les valeurs non nulles de A.

## 📄 Description


<b>nonzeros</b> retourne les valeurs non nulles de <b>A</b> dans l'ordre colonne. 

Pour une entree sparse, la sortie est un vecteur colonne dense contenant seulement les valeurs reellement non nulles. Les valeurs nulles stockees dans une matrice sparse sont ignorees. 

La sortie conserve la classe des valeurs de <b>A</b>, y compris les entrees single, single complexes, logiques et entieres.

## 💡 Exemples



```matlab
A = sparse([1 0 2; 0 3 0]);
v = nonzeros(A)

```


```matlab
S = sparse([1 2 1 2], [1 1 2 2], single([0 -0 complex(0, 0) complex(0, 2)]), 2, 2, 4);
v = nonzeros(S)

```


## 🔗 Voir aussi

[find](../elementary_functions/7_indexing_dimensions/find.md), [sparse](../sparse/sparse.md), [nnz](../sparse/nnz.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
