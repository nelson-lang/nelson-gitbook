#import "../nelson_help.typ": *

= eig <linear_algebra:3_eigen_singular_values.eig>

Valeurs propres et vecteurs propres.

== Syntaxe

- #raw("e = eig(A)");
- #raw("[V, D] = eig(A)");
- #raw("e = eig(A, balanceOption)");
- #raw("[V, D] = eig(A, balanceOption)");
- #raw("e = eig(A, B)");
- #raw("[V, D] = eig(A, B)");
- #raw("e = eig(A, B, balanceOption)");
- #raw("[V, D] = eig(A, B, balanceOption)");

== Argument d'entrée

/ A: a numeric value: scalar or square matrix (double or single, complex or real)
/ B: a numeric value: scalar or square matrix (double or single, complex or real)
/ balanceOption: a string: 'nobalance' (disable preliminary balancing) or 'balance' (default).

== Argument de sortie

/ e: real or complex number (double or single), Eigenvalues (returned as column vector).
/ V: real or complex number (double or single), square right eigenvectors.
/ D: real or complex number (double or single), Eigenvalues (returned as diagonal matrix).

== Description

#strong[eig(A)]; retourne les valeurs propres et vecteurs propres.

 Pour une matrice carrée #strong[A];, les valeurs propres

 #latex("\\lambda"); et vecteurs propres

 #latex("\\mathbf{v}"); satisfont :

 #latex("A\\mathbf{v} = \\lambda\\mathbf{v}"); L'équation caractéristique est :

 #latex("\\det(A - \\lambda I) = 0"); #strong[eig(A, B)]; retourne les valeurs propres généralisées et vecteurs propres où :

 #latex("A\\mathbf{v} = \\lambda B\\mathbf{v}");
== Bibliographie

\[1\] Anderson, E., Z. Bai, C. Bischof, S. Blackford, J. Demmel, J. Dongarra, J. Du Croz, A. Greenbaum, S. Hammarling, A. McKenney, and D. Sorensen, LAPACK User's Guide (http:\/\/www.netlib.org\/lapack\/lug\/ lapack\_lug.html), Third Edition, SIAM, Philadelphia, 1999.

== Exemples

``````matlab
A = [10 -20 40; -50 20 0; 10 0 30]
e = eig(A)
[V, D] = eig(A)

``````

``````matlab
A = [1/sqrt(2) 0; 0 1];
B = [0 1; -1/sqrt(2) 0];
[V, D] = eig(A, B)

``````


== Voir aussi

#nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];, #nlink(<linear_algebra:3_eigen_singular_values.schur>)[schur];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
