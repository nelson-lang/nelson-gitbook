# shiftdim

Décale les dimensions d'un tableau

## 📝 Syntaxe

- B = shiftdim(A, n)
- B = shiftdim(A)
- [B, m] = shiftdim(A)

## 📥 Argument d'entrée

- A - tableau d'entrée : vecteur, matrice ou tableau multidimensionnel.
- n - nombre de positions : valeur entière.

## 📤 Argument de sortie

- B - vecteur, matrice ou tableau multidimensionnel.
- m - nombre de dimensions supprimées : entier positif ou nul.

## 📄 Description


<b>shiftdim(A, n)</b> réorganise les dimensions d'un tableau A de n positions. 

Plus précisément, lorsque n est un entier positif, les dimensions sont décalées vers la gauche, et lorsque n est un entier négatif, elles sont décalées vers la droite.

## 💡 Exemple



```matlab
A = rand(2, 3, 4);
size(A)
% Shift the dimensions of array A by 2 positions to the left
B = shiftdim(A, 2)
```


## 🔗 Voir aussi

[permute](../../elementary_functions/7_indexing_dimensions/permute.md), [reshape](../../elementary_functions/1_array_creation_shape/reshape.md), [squeeze](../../elementary_functions/2_elementary_math/round.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.3.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
