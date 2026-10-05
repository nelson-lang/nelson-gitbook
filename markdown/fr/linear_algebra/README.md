# Algèbre linéaire


    
Le module Algèbre Linéaire fournit des outils complets pour effectuer des calculs matriciels et vectoriels dans Nelson.

    
Il inclut des fonctions pour la factorisation, la décomposition, l'inversion et l'analyse de matrices, ainsi que des opérations sur les valeurs propres, valeurs singulières et sous-espaces.

    
Le module prend en charge des méthodes numériques avancées pour évaluer les propriétés des matrices, les nombres de condition et les transformations, permettant des solutions efficaces et précises pour un large éventail de problèmes d'algèbre linéaire.

  

## Systemes lineaires


    
Fonctions pour resoudre, analyser et mesurer des systemes lineaires et quantites vectorielles ou matricielles.

  

### Functions

- [cumtrapz](1_linear_systems/cumtrapz.md) - Integration numerique cumulative par la methode des trapezes.
- [del2](1_linear_systems/del2.md) - Laplacien discret.
- [det](1_linear_systems/det.md) - Déterminant d'une matrice.
- [diff](1_linear_systems/diff.md) - Différences et dérivées approximatives.
- [gradient](1_linear_systems/gradient.md) - Gradient numérique.
- [inv](1_linear_systems/inv.md) - Inverse de matrice.
- [kron](1_linear_systems/kron.md) - Produit tensoriel de Kronecker.
- [null](1_linear_systems/null.md) - Noyau d'une matrice
- [orth](1_linear_systems/orth.md) - Base orthonormée de l'espace image d'une matrice.
- [rank](1_linear_systems/rank.md) - Rang d'une matrice.
- [rref](1_linear_systems/rref.md) - Élimination de Gauss-Jordan (forme échelonnée réduite).
- [subspace](1_linear_systems/subspace.md) - Angle entre deux sous-espaces.
- [tensorprod](1_linear_systems/tensorprod.md) - Produits tensoriels entre deux tableaux.
- [trace](1_linear_systems/trace.md) - Trace d'une matrice.
- [trapz](1_linear_systems/trapz.md) - Integration numerique par la methode des trapezes.
- [vecnorm](1_linear_systems/vecnorm.md) - Norme par vecteur.

## Decompositions


    
Fonctions de factorisation matricielle et de rotation plane.

  

### Functions

- [chol](2_decompositions/chol.md) - Factorisation de Cholesky.
- [hess](2_decompositions/hess.md) - Forme de Hessenberg d'une matrice carree.
- [lu](2_decompositions/lu.md) - Factorisation LU d'une matrice.
- [planerot](2_decompositions/planerot.md) - Rotation plane de Givens.
- [qr](2_decompositions/qr.md) - Factorisation QR d'une matrice.

## Valeurs propres et valeurs singulieres


    
Fonctions pour calculs de valeurs propres, valeurs singulieres et formes de Schur.

  

### Functions

- [balance](3_eigen_singular_values/balance.md) - Mise à l'échelle diagonale pour améliorer la précision des valeurs propres.
- [eig](3_eigen_singular_values/eig.md) - Valeurs propres et vecteurs propres.
- [eigs](3_eigen_singular_values/eigs.md) - Valeurs propres et vecteurs propres selectionnes d'une matrice creuse.
- [rsf2csf](3_eigen_singular_values/rsf2csf.md) - Convertit la forme de Schur réelle en forme de Schur complexe.
- [schur](3_eigen_singular_values/schur.md) - Décomposition de Schur.
- [svd](3_eigen_singular_values/svd.md) - Décomposition en valeurs singulières (SVD).
- [svds](3_eigen_singular_values/svds.md) - Valeurs singulieres et vecteurs singuliers selectionnes d'une matrice creuse.

## Fonctions matricielles


    
Fonctions qui evaluent des fonctions elementaires sur des matrices.

  

### Functions

- [expm](4_matrix_functions/expm.md) - Calcule l'exponentielle matricielle d'une matrice carrée.
- [logm](4_matrix_functions/logm.md) - Calcule le logarithme matriciel d'une matrice carrée.
- [pagectranspose](4_matrix_functions/pagectranspose.md) - Transposée conjuguée par page
- [pageinv](4_matrix_functions/pageinv.md) - Inverse matriciel par page
- [pagemtimes](4_matrix_functions/pagemtimes.md) - Multiplication matricielle par page
- [pagenorm](4_matrix_functions/pagenorm.md) - Norme matricielle ou vectorielle page par page.
- [pagetranspose](4_matrix_functions/pagetranspose.md) - Transposition par page
- [sqrtm](4_matrix_functions/sqrtm.md) - Calcule la racine carrée matricielle d'une matrice carrée.

## Proprietes matricielles


    
Fonctions pour estimations de conditionnement, controles de structure et proprietes matricielles.

  

### Functions

- [bandwidth](5_matrix_properties/bandwidth.md) - Largeur de bande inférieure et supérieure d'une matrice.
- [cond](5_matrix_properties/cond.md) - Nombre de condition pour l'inversion.
- [condeig](5_matrix_properties/condeig.md) - Nombre de condition relatif aux valeurs propres.
- [condest](5_matrix_properties/condest.md) - Estimation du nombre de condition en norme 1.
- [isbanded](5_matrix_properties/isbanded.md) - Détermine si une matrice est dans une largeur de bande spécifique.
- [ishermitian](5_matrix_properties/ishermitian.md) - Teste si une matrice est hermitienne ou skew-hermitienne.
- [issymmetric](5_matrix_properties/issymmetric.md) - Teste si une matrice est symétrique.
- [rcond](5_matrix_properties/rcond.md) - Nombre de condition inverse.

## Solveurs iteratifs


    
Solveurs iteratifs pour systemes lineaires.

  

### Functions

- [bicg](6_iterative_solvers/bicg.md) - Methode du gradient biconjugue pour systemes lineaires sparse.
- [bicgstab](6_iterative_solvers/bicgstab.md) - Methode des gradients biconjugues stabilises.
- [cgs](6_iterative_solvers/cgs.md) - Methode du gradient conjugue carre pour systemes lineaires sparse.
- [gmres](6_iterative_solvers/gmres.md) - Methode du residu minimal generalise.
- [lsmr](6_iterative_solvers/lsmr.md) - Methode LSMR pour equations sparse et moindres carres.
- [lsqr](6_iterative_solvers/lsqr.md) - Methode LSQR pour equations sparse et moindres carres.
- [minres](6_iterative_solvers/minres.md) - Methode du residu minimal pour systemes sparse symetriques ou hermitiens.
- [pcg](6_iterative_solvers/pcg.md) - Methode des gradients conjugues preconditionnes.
- [qmr](6_iterative_solvers/qmr.md) - Methode du residu quasi minimal pour systemes lineaires sparse.

## Preconditionneurs


    
Fonctions de factorisation incomplete utilisees comme preconditionneurs.

  

### Functions

- [ichol](7_preconditioners/ichol.md) - Factorisation de Cholesky incomplete.
- [ilu](7_preconditioners/ilu.md) - Factorisation LU incomplete.

