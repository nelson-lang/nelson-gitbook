# ismatrix

détermine si l'entrée est une matrice ou non

## 📝 Syntaxe

- TF = ismatrix(A)

## 📥 Argument d'entrée

- A - tableau d'entrée : scalaire, vecteur, matrice ou tableau multidimensionnel.

## 📤 Argument de sortie

- TF - un logique : true s'il s'agit d'une matrice.

## 📄 Description


<b>TF = ismatrix(A)</b> renvoie true si A est une matrice. 

Une matrice est un tableau bidimensionnel de taille m par n, où m et n sont des entiers positifs ou nuls.

## 💡 Exemple



```matlab
x = [1+i,-i;i,2i];
ismatrix(x)
ismatrix(ones(3,1,2))
```


## 🔗 Voir aussi

[isvector](../../elementary_functions/7_indexing_dimensions/isvector.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
