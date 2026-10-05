#import "../nelson_help.typ": *

= pagemtimes <linear_algebra:4_matrix_functions.pagemtimes>

Multiplication matricielle par page

== Syntaxe

- #raw("C = pagemtimes(A, B)");
- #raw("C = pagemtimes(A, transpA, B, transpB)");

== Argument d'entrée

/ A: tableau dont les pages sont des matrices.
/ B: tableau dont les pages sont des matrices.
/ transpA: transformation appliquée aux pages de A : 'none', 'transpose' ou 'ctranspose'.
/ transpB: transformation appliquée aux pages de B : 'none', 'transpose' ou 'ctranspose'.

== Argument de sortie

/ C: tableau dont les pages sont les produits matriciels des pages de A et B.

== Description

#strong[pagemtimes]; multiplie les pages (les deux premières dimensions) des tableaux N-D A et B. C(:,:,i) \= A(:,:,i) \* B(:,:,i). Les arguments de transformation optionnels transposent ou transposent-conjuguent chaque page avant la multiplication. Si une entrée n'a qu'une seule page, elle est diffusée sur les pages de l'autre.


== Exemple

``````matlab
A = reshape(1:24, 2, 3, 4);
B = reshape(1:24, 3, 2, 4);
C = pagemtimes(A, B)
``````


== Voir aussi

#nlink(<linear_algebra:4_matrix_functions.pagetranspose>)[pagetranspose];, #nlink(<linear_algebra:4_matrix_functions.pageinv>)[pageinv];, #nlink(<operators:mtimes>)[mtimes];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
