#import "../nelson_help.typ": *

= qr <linear_algebra:2_decompositions.qr>

Factorisation QR d'une matrice.

== Syntaxe

- #raw("R = qr(A)");
- #raw("[Q, R] = qr(A)");
- #raw("[Q, R, P] = qr(A)");
- #raw("[...] = qr(A, 'econ')");
- #raw("[Q, R, P] = qr(A, outputForm)");
- #raw("[...] = qr(A, 0)");
- #raw("[C, R] = qr(S, B)");
- #raw("[C, R, P] = qr(S, B)");

== Argument d'entrée

/ A: une matrice pleine ou sparse single ou double, reelle ou complexe.
/ S: une matrice de coefficients sparse.
/ B: une matrice second membre de meme classe numerique que S.
/ outputForm: 'matrix' ou 'vector'.

== Argument de sortie

/ Q: facteur orthogonal ou unitaire.
/ R: facteur triangulaire superieur.
/ P: matrice ou vecteur de permutation des colonnes.
/ C: facteur egal a Q' \* B pour les formes moindres carres sparse.

== Description

#strong[qr]; calcule une factorisation QR. Pour les matrices pleines, #strong[A \= Q \* R];. Avec trois sorties, une permutation de colonnes est retournee et #strong[A \* P \= Q \* R];, ou #strong[A(:, P) \= Q \* R]; lorsque #strong[outputForm]; vaut #strong['vector'];.

 L'option #strong['econ']; retourne des facteurs de taille economique pour les matrices hautes. L'option historique #strong[0]; est equivalente a une sortie economique avec vecteurs de permutation.

 Pour une matrice sparse #strong[S]; et un second membre #strong[B];, #strong[qr(S, B)]; retourne #strong[C \= Q' \* B]; et #strong[R]; pour les resolutions aux moindres carres.


== Fonction(s) utilisée(s)

LAPACK dgeqrf, LAPACK sgeqrf, LAPACK zgeqrf, LAPACK cgeqrf, LAPACK dgeqp3, LAPACK sgeqp3, LAPACK zgeqp3, LAPACK cgeqp3, Eigen::SparseQR

== Exemples

``````matlab
A = magic(5);
[Q, R] = qr(A);
norm(A - Q * R)
``````

Factorisation QR economique.

``````matlab
A = rand(10, 3);
[Q, R, p] = qr(A, 'econ', 'vector');
norm(A(:, p) - Q * R)
``````


== Voir aussi

#nlink(<linear_algebra:2_decompositions.lu>)[lu];, #nlink(<linear_algebra:2_decompositions.chol>)[chol];, #nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
