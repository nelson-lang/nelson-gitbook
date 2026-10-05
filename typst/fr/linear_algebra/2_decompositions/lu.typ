#import "../nelson_help.typ": *

= lu <linear_algebra:2_decompositions.lu>

Factorisation LU d'une matrice.

== Syntaxe

- #raw("[L, U] = lu(A)");
- #raw("[L, U, P] = lu(A)");

== Argument d'entrée

/ A: une matrice : carrÃ©e, finie (simple ou double prÃ©cision).

== Argument de sortie

/ L: Facteur triangulaire infÃ©rieur : matrice (mÃªme type que A)
/ U: Facteur triangulaire supÃ©rieur : matrice (mÃªme type que A).
/ P: Permutation de lignes : matrice (mÃªme type que A).

== Description

#strong[\[L, U\] \= lu(A)]; dÃ©compose une matrice pleine #strong[A]; en deux matrices : une matrice triangulaire supÃ©rieure #strong[U]; et une matrice triangulaire infÃ©rieure permutÃ©e #strong[L];.

 Cette factorisation satisfait l'Ã©quation #strong[A \= L \* U];.

 #strong[\[L, U, P\] \= lu(A)]; : avec trois arguments de sortie, la fonction fournit une matrice de permutation#strong[P]; en plus de la matrice triangulaire infÃ©rieure unitaire #strong[L]; et de la matrice triangulaire supÃ©rieure #strong[U];.

 Cette factorisation s'exprime comme #strong[A \= P'LU];, oÃ¹#strong[L]; est triangulaire infÃ©rieure unitaire et#strong[U]; est triangulaire supÃ©rieure.

 Les matrices sparse single et sparse single complexes sont prises en charge. Les facteurs retournes conservent le stockage sparse et la precision de l'entree.


== Fonction(s) utilisée(s)

LAPACK dgetrf, LAPACK sgetrf, LAPACK zgetrf, LAPACK cgetrf

== Exemples

``````matlab
A = magic(5)
[L, U] = lu(A)
L * U

``````

``````matlab
A = magic(5)
[L, U, P] = lu(A);
subplot(1, 2, 1)
spy(L)
title(_('L factor'))
subplot(1, 2, 2)
spy(U)
title(_('U factor'))

``````


#align(center)[#image("lu.svg")]
Factorisation LU sparse single.

``````matlab
A = sparse(single([4 1; 2 3]));
[L, U, P] = lu(A)
``````


== Voir aussi

#nlink(<linear_algebra:5_matrix_properties.cond>)[cond];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.1.0], [version initiale],
  [2.0.0], [prise en charge des matrices sparse single et sparse single complexes.],
)

// Auteur: Allan CORNET
