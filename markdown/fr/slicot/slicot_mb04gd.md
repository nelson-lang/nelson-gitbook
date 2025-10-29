# slicot_mb04gd

Factorisation RQ avec pivotement de lignes d'une matrice.

## 📝 Syntaxe

- [A_OUT, JPVT_OUT, TAU, INFO] = slicot_mb04gd(A_IN, JPVT_IN)

## 📥 Argument d'entrée

- A_IN - La matrice m-by-n A.
- JPVT_IN - Si JPVT(i) != 0, la i-ème ligne de A est permutée vers le bas de P\*A (ligne finale) ; si JPVT(i) = 0, la i-ème ligne est une ligne libre.

## 📤 Argument de sortie

- A_OUT - Si m ≤ n, le triangle supérieur de la sous-matrice A(1:m,n-m+1:n) contient la matrice triangulaire supérieure M-by-M R ; si m ≥ n, les éléments sur et au-dessus de la (m-n)-ième sous-diagonale contiennent la matrice trapézoïdale supérieure m-by-n R ; les éléments restants, avec le tableau TAU, représentent la matrice orthogonale Q comme produit de min(m,n) réflecteurs élémentaires.
- JPVT_OUT - Si JPVT(i) = k, alors la i-ème ligne de P\*A était la k-ème ligne de A.
- TAU - Les facteurs scalaires des réflecteurs élémentaires.
- INFO - = 0 : sortie réussie.

## 📄 Description

Calculer une factorisation RQ avec pivotement de lignes d'une matrice réelle m-by-n A : P _ A = R _ Q.

## Fonction(s) utilisée(s)

MB04GD

## 📚 Bibliographie

http://slicot.org/objects/software/shared/doc/MB04GD.html

## 💡 Exemple

```matlab
M = 6;
N = 5;
A_IN = [1.    2.    6.    3.    5.;
  -2.   -1.   -1.    0.   -2.;
   5.    5.    1.    5.    1.;
  -2.   -1.   -1.    0.   -2.;
   4.    8.    4.   20.    4.;
  -2.   -1.   -1.    0.   -2.];
JPVT_IN = zeros(1, M);
[A_OUT, JPVT_OUT, TAU, INFO] = slicot_mb04gd(A_IN, JPVT_IN)
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

SLICOT Documentation
-->
