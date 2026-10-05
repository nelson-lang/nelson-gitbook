# qr

Factorisation QR d'une matrice.

## 📝 Syntaxe

- R = qr(A)
- [Q, R] = qr(A)
- [Q, R, P] = qr(A)
- [...] = qr(A, 'econ')
- [Q, R, P] = qr(A, outputForm)
- [...] = qr(A, 0)
- [C, R] = qr(S, B)
- [C, R, P] = qr(S, B)

## 📥 Argument d'entrée

- A - une matrice pleine ou sparse single ou double, reelle ou complexe.
- S - une matrice de coefficients sparse.
- B - une matrice second membre de meme classe numerique que S.
- outputForm - 'matrix' ou 'vector'.

## 📤 Argument de sortie

- Q - facteur orthogonal ou unitaire.
- R - facteur triangulaire superieur.
- P - matrice ou vecteur de permutation des colonnes.
- C - facteur egal a Q' \* B pour les formes moindres carres sparse.

## 📄 Description


<b>qr</b> calcule une factorisation QR. Pour les matrices pleines, <b>A = Q \* R</b>. Avec trois sorties, une permutation de colonnes est retournee et <b>A \* P = Q \* R</b>, ou <b>A(:, P) = Q \* R</b> lorsque <b>outputForm</b> vaut <b>'vector'</b>. 

L'option <b>'econ'</b> retourne des facteurs de taille economique pour les matrices hautes. L'option historique <b>0</b> est equivalente a une sortie economique avec vecteurs de permutation. 

Pour une matrice sparse <b>S</b> et un second membre <b>B</b>, <b>qr(S, B)</b> retourne <b>C = Q' \* B</b> et <b>R</b> pour les resolutions aux moindres carres.

## Fonction(s) utilisée(s)

LAPACK dgeqrf, LAPACK sgeqrf, LAPACK zgeqrf, LAPACK cgeqrf, LAPACK dgeqp3, LAPACK sgeqp3, LAPACK zgeqp3, LAPACK cgeqp3, Eigen::SparseQR

## 💡 Exemples



```matlab
A = magic(5);
[Q, R] = qr(A);
norm(A - Q * R)
```
Factorisation QR economique.

```matlab
A = rand(10, 3);
[Q, R, p] = qr(A, 'econ', 'vector');
norm(A(:, p) - Q * R)
```


## 🔗 Voir aussi

[lu](../../linear_algebra/2_decompositions/lu.md), [chol](../../linear_algebra/2_decompositions/chol.md), [svd](../../linear_algebra/3_eigen_singular_values/svd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
