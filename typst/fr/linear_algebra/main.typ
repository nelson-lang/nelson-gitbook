#import "nelson_help.typ": *

= Algèbre linéaire

Le module Algèbre Linéaire fournit des outils complets pour effectuer des calculs matriciels et vectoriels dans Nelson.

 Il inclut des fonctions pour la factorisation, la décomposition, l'inversion et l'analyse de matrices, ainsi que des opérations sur les valeurs propres, valeurs singulières et sous-espaces.

 Le module prend en charge des méthodes numériques avancées pour évaluer les propriétés des matrices, les nombres de condition et les transformations, permettant des solutions efficaces et précises pour un large éventail de problèmes d'algèbre linéaire.

== Systemes lineaires

Fonctions pour resoudre, analyser et mesurer des systemes lineaires et quantites vectorielles ou matricielles.

=== Functions

- #nlink(<linear_algebra:1_linear_systems.cumtrapz>)[cumtrapz]: Integration numerique cumulative par la methode des trapezes.
- #nlink(<linear_algebra:1_linear_systems.del2>)[del2]: Laplacien discret.
- #nlink(<linear_algebra:1_linear_systems.det>)[det]: Déterminant d'une matrice.
- #nlink(<linear_algebra:1_linear_systems.diff>)[diff]: Différences et dérivées approximatives.
- #nlink(<linear_algebra:1_linear_systems.gradient>)[gradient]: Gradient numérique.
- #nlink(<linear_algebra:1_linear_systems.inv>)[inv]: Inverse de matrice.
- #nlink(<linear_algebra:1_linear_systems.kron>)[kron]: Produit tensoriel de Kronecker.
- #nlink(<linear_algebra:1_linear_systems.null>)[null]: Noyau d'une matrice
- #nlink(<linear_algebra:1_linear_systems.orth>)[orth]: Base orthonormée de l'espace image d'une matrice.
- #nlink(<linear_algebra:1_linear_systems.rank>)[rank]: Rang d'une matrice.
- #nlink(<linear_algebra:1_linear_systems.rref>)[rref]: Élimination de Gauss-Jordan (forme échelonnée réduite).
- #nlink(<linear_algebra:1_linear_systems.subspace>)[subspace]: Angle entre deux sous-espaces.
- #nlink(<linear_algebra:1_linear_systems.tensorprod>)[tensorprod]: Produits tensoriels entre deux tableaux.
- #nlink(<linear_algebra:1_linear_systems.trace>)[trace]: Trace d'une matrice.
- #nlink(<linear_algebra:1_linear_systems.trapz>)[trapz]: Integration numerique par la methode des trapezes.
- #nlink(<linear_algebra:1_linear_systems.vecnorm>)[vecnorm]: Norme par vecteur.

== Decompositions

Fonctions de factorisation matricielle et de rotation plane.

=== Functions

- #nlink(<linear_algebra:2_decompositions.chol>)[chol]: Factorisation de Cholesky.
- #nlink(<linear_algebra:2_decompositions.hess>)[hess]: Forme de Hessenberg d'une matrice carree.
- #nlink(<linear_algebra:2_decompositions.lu>)[lu]: Factorisation LU d'une matrice.
- #nlink(<linear_algebra:2_decompositions.planerot>)[planerot]: Rotation plane de Givens.
- #nlink(<linear_algebra:2_decompositions.qr>)[qr]: Factorisation QR d'une matrice.

== Valeurs propres et valeurs singulieres

Fonctions pour calculs de valeurs propres, valeurs singulieres et formes de Schur.

=== Functions

- #nlink(<linear_algebra:3_eigen_singular_values.balance>)[balance]: Mise à l'échelle diagonale pour améliorer la précision des valeurs propres.
- #nlink(<linear_algebra:3_eigen_singular_values.eig>)[eig]: Valeurs propres et vecteurs propres.
- #nlink(<linear_algebra:3_eigen_singular_values.eigs>)[eigs]: Valeurs propres et vecteurs propres selectionnes d'une matrice creuse.
- #nlink(<linear_algebra:3_eigen_singular_values.rsf2csf>)[rsf2csf]: Convertit la forme de Schur réelle en forme de Schur complexe.
- #nlink(<linear_algebra:3_eigen_singular_values.schur>)[schur]: Décomposition de Schur.
- #nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd]: Décomposition en valeurs singulières (SVD).
- #nlink(<linear_algebra:3_eigen_singular_values.svds>)[svds]: Valeurs singulieres et vecteurs singuliers selectionnes d'une matrice creuse.

== Fonctions matricielles

Fonctions qui evaluent des fonctions elementaires sur des matrices.

=== Functions

- #nlink(<linear_algebra:4_matrix_functions.expm>)[expm]: Calcule l'exponentielle matricielle d'une matrice carrée.
- #nlink(<linear_algebra:4_matrix_functions.logm>)[logm]: Calcule le logarithme matriciel d'une matrice carrée.
- #nlink(<linear_algebra:4_matrix_functions.pagectranspose>)[pagectranspose]: Transposée conjuguée par page
- #nlink(<linear_algebra:4_matrix_functions.pageinv>)[pageinv]: Inverse matriciel par page
- #nlink(<linear_algebra:4_matrix_functions.pagemtimes>)[pagemtimes]: Multiplication matricielle par page
- #nlink(<linear_algebra:4_matrix_functions.pagenorm>)[pagenorm]: Norme matricielle ou vectorielle page par page.
- #nlink(<linear_algebra:4_matrix_functions.pagetranspose>)[pagetranspose]: Transposition par page
- #nlink(<linear_algebra:4_matrix_functions.sqrtm>)[sqrtm]: Calcule la racine carrée matricielle d'une matrice carrée.

== Proprietes matricielles

Fonctions pour estimations de conditionnement, controles de structure et proprietes matricielles.

=== Functions

- #nlink(<linear_algebra:5_matrix_properties.bandwidth>)[bandwidth]: Largeur de bande inférieure et supérieure d'une matrice.
- #nlink(<linear_algebra:5_matrix_properties.cond>)[cond]: Nombre de condition pour l'inversion.
- #nlink(<linear_algebra:5_matrix_properties.condeig>)[condeig]: Nombre de condition relatif aux valeurs propres.
- #nlink(<linear_algebra:5_matrix_properties.condest>)[condest]: Estimation du nombre de condition en norme 1.
- #nlink(<linear_algebra:5_matrix_properties.isbanded>)[isbanded]: Détermine si une matrice est dans une largeur de bande spécifique.
- #nlink(<linear_algebra:5_matrix_properties.ishermitian>)[ishermitian]: Teste si une matrice est hermitienne ou skew-hermitienne.
- #nlink(<linear_algebra:5_matrix_properties.issymmetric>)[issymmetric]: Teste si une matrice est symétrique.
- #nlink(<linear_algebra:5_matrix_properties.rcond>)[rcond]: Nombre de condition inverse.

== Solveurs iteratifs

Solveurs iteratifs pour systemes lineaires.

=== Functions

- #nlink(<linear_algebra:6_iterative_solvers.bicg>)[bicg]: Methode du gradient biconjugue pour systemes lineaires sparse.
- #nlink(<linear_algebra:6_iterative_solvers.bicgstab>)[bicgstab]: Methode des gradients biconjugues stabilises.
- #nlink(<linear_algebra:6_iterative_solvers.cgs>)[cgs]: Methode du gradient conjugue carre pour systemes lineaires sparse.
- #nlink(<linear_algebra:6_iterative_solvers.gmres>)[gmres]: Methode du residu minimal generalise.
- #nlink(<linear_algebra:6_iterative_solvers.lsmr>)[lsmr]: Methode LSMR pour equations sparse et moindres carres.
- #nlink(<linear_algebra:6_iterative_solvers.lsqr>)[lsqr]: Methode LSQR pour equations sparse et moindres carres.
- #nlink(<linear_algebra:6_iterative_solvers.minres>)[minres]: Methode du residu minimal pour systemes sparse symetriques ou hermitiens.
- #nlink(<linear_algebra:6_iterative_solvers.pcg>)[pcg]: Methode des gradients conjugues preconditionnes.
- #nlink(<linear_algebra:6_iterative_solvers.qmr>)[qmr]: Methode du residu quasi minimal pour systemes lineaires sparse.

== Preconditionneurs

Fonctions de factorisation incomplete utilisees comme preconditionneurs.

=== Functions

- #nlink(<linear_algebra:7_preconditioners.ichol>)[ichol]: Factorisation de Cholesky incomplete.
- #nlink(<linear_algebra:7_preconditioners.ilu>)[ilu]: Factorisation LU incomplete.


#nested[
#pagebreak(weak: true)
#include "1_linear_systems/cumtrapz.typ"
#pagebreak(weak: true)
#include "1_linear_systems/del2.typ"
#pagebreak(weak: true)
#include "1_linear_systems/det.typ"
#pagebreak(weak: true)
#include "1_linear_systems/diff.typ"
#pagebreak(weak: true)
#include "1_linear_systems/gradient.typ"
#pagebreak(weak: true)
#include "1_linear_systems/inv.typ"
#pagebreak(weak: true)
#include "1_linear_systems/kron.typ"
#pagebreak(weak: true)
#include "1_linear_systems/null.typ"
#pagebreak(weak: true)
#include "1_linear_systems/orth.typ"
#pagebreak(weak: true)
#include "1_linear_systems/rank.typ"
#pagebreak(weak: true)
#include "1_linear_systems/rref.typ"
#pagebreak(weak: true)
#include "1_linear_systems/subspace.typ"
#pagebreak(weak: true)
#include "1_linear_systems/tensorprod.typ"
#pagebreak(weak: true)
#include "1_linear_systems/trace.typ"
#pagebreak(weak: true)
#include "1_linear_systems/trapz.typ"
#pagebreak(weak: true)
#include "1_linear_systems/vecnorm.typ"
#pagebreak(weak: true)
#include "2_decompositions/chol.typ"
#pagebreak(weak: true)
#include "2_decompositions/hess.typ"
#pagebreak(weak: true)
#include "2_decompositions/lu.typ"
#pagebreak(weak: true)
#include "2_decompositions/planerot.typ"
#pagebreak(weak: true)
#include "2_decompositions/qr.typ"
#pagebreak(weak: true)
#include "3_eigen_singular_values/balance.typ"
#pagebreak(weak: true)
#include "3_eigen_singular_values/eig.typ"
#pagebreak(weak: true)
#include "3_eigen_singular_values/eigs.typ"
#pagebreak(weak: true)
#include "3_eigen_singular_values/rsf2csf.typ"
#pagebreak(weak: true)
#include "3_eigen_singular_values/schur.typ"
#pagebreak(weak: true)
#include "3_eigen_singular_values/svd.typ"
#pagebreak(weak: true)
#include "3_eigen_singular_values/svds.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/expm.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/logm.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/pagectranspose.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/pageinv.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/pagemtimes.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/pagenorm.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/pagetranspose.typ"
#pagebreak(weak: true)
#include "4_matrix_functions/sqrtm.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/bandwidth.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/cond.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/condeig.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/condest.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/isbanded.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/ishermitian.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/issymmetric.typ"
#pagebreak(weak: true)
#include "5_matrix_properties/rcond.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/bicg.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/bicgstab.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/cgs.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/gmres.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/lsmr.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/lsqr.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/minres.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/pcg.typ"
#pagebreak(weak: true)
#include "6_iterative_solvers/qmr.typ"
#pagebreak(weak: true)
#include "7_preconditioners/ichol.typ"
#pagebreak(weak: true)
#include "7_preconditioners/ilu.typ"
]
