# find

Trouver les elements non nuls

## 📝 Syntaxe

- K = find(M)
- [R, C] = find(M)
- [R, C, V] = find(M)
- K = find(M, N)
- [R, C] = find(M, N)
- [R, C, V] = find(M, N)
- K = find(M, N, D)
- [R, C] = find(M, N, D)
- [R, C, V] = find(M, N, D)

## 📥 Argument d'entrée

- M - un scalaire, vecteur, matrice, tableau multidimensionnel ou matrice sparse.
- N - entier positif, ou <b>Inf</b> : nombre de non-zeros a trouver.
- D - direction : 'first' (par defaut) ou 'last'. La valeur est insensible a la casse.

## 📤 Argument de sortie

- K - indices des elements non nuls (vecteur).
- R - indices de lignes (vecteur).
- C - indices de colonnes (vecteur).
- V - elements non nuls de M (vecteur).

## 📄 Description


<b>K = find(M)</b> renvoie un vecteur contenant les indices lineaires de chaque element non nul de <b>M</b>. 

<b>find(M, Inf)</b> renvoie tous les indices non nuls et peut etre combine avec l'argument de direction. 

Pour une entree sparse, <b>find</b> accepte les matrices sparse double, single, logiques, double complexes et single complexes. Les valeurs nulles stockees sont ignorees ; seules les entrees dont la valeur est reellement non nulle sont retournees. 

Avec trois sorties, <b>V</b> conserve la classe des valeurs de la matrice sparse d'entree, y compris les valeurs single et logiques.

## 💡 Exemples



```matlab
M = rand(4, 3, 5);
[R, C, V] = find(M > 0.9)
M(R(1),C(1),V(1))
```


```matlab
K = find([0 2 0 3], Inf, 'LAST')
```


```matlab
S = sparse([1 2 1 2], [1 1 2 2], single([0 -0 complex(0, 0) complex(0, 2)]), 2, 2, 4);
[R, C, V] = find(S)
```


## 🔗 Voir aussi

[strfind](../../string/3_find_replace/strfind.md), [sparse](../../sparse/sparse.md), [nonzeros](../../sparse/nonzeros.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | support sparse single et single complexe etendu |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
