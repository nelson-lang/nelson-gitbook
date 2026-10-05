#import "../nelson_help.typ": *

= lsqr <linear_algebra:6_iterative_solvers.lsqr>

Methode LSQR pour equations sparse et moindres carres.

== Syntaxe

- #raw("x = lsqr(A, b)");
- #raw("x = lsqr(A, b, tol, maxit)");
- #raw("x = lsqr(A, b, tol, maxit, M1, M2, x0)");
- #raw("[x, flag, relres, iter, resvec, lsvec] = lsqr(...)");

== Argument d'entrée

/ A: une matrice sparse flottante reelle ou complexe.
/ b: un vecteur second membre flottant reel ou complexe.
/ tol: tolerance de convergence scalaire reelle finie. La valeur par defaut est 1e-6.
/ maxit: nombre maximal d'iterations, entier positif ou nul.
/ M1, M2: preconditionneurs a droite optionnels : matrices carrees sparse ou pleines, vecteurs diagonaux ou handles de fonction. Les handles de fonction doivent accepter un vecteur et un indicateur de transposition.
/ x0: vecteur initial optionnel.

== Argument de sortie

/ x: vecteur solution calcule.
/ flag: 0 si la convergence est atteinte, 1 si maxit est atteint, 4 en cas de rupture numerique.
/ relres: norme relative du residu.
/ iter: nombre d'iterations.
/ resvec: historique des normes de residu.
/ lsvec: historique estime du residu moindres carres.

== Description

#strong[lsqr]; resout des equations sparse et des problemes de moindres carres avec une methode de bidiagonalisation de Lanczos.

 La methode prend en charge les matrices sparse double, single, double complexes et single complexes, carrees ou rectangulaires.

 #strong[M1]; et #strong[M2]; sont des preconditionneurs a droite. Ils peuvent etre des vecteurs diagonaux, des matrices carrees sparse ou pleines, ou des handles de fonction acceptant un vecteur et l'indicateur de transposition #strong['notransp']; ou #strong['transp'];.

 #strong[resvec]; stocke les normes de residu et #strong[lsvec]; stocke les normes des residus des equations normales a chaque iteration.

 Si #strong[M1];, #strong[M2]; ou #strong[x0]; est complexe, le calcul utilise le chemin complexe adapte.


== Exemples

``````matlab
A = sparse([1 0; 0 1; 1 1; 2 -1]);
b = [1; 2; 4; 1];
[x, flag, relres, iter] = lsqr(A, b, 1e-12, 20)

``````

Moindres carres sparse single avec preconditionnement diagonal.

``````matlab
A = sparse(single([1 0; 0 1; 1 1]));
b = single([1; 2; 3]);
M = single([1; 2]);
[x, flag] = lsqr(A, b, 1e-6, 20, M)
``````

Moindres carres avec preconditionneurs a droite separes.

``````matlab
A = sparse([1 0; 0 1; 1 1; 2 -1]);
b = [1; 2; 4; 1];
M1 = [2 0; 0 1];
M2 = [1 0.5; 0 3];
[x, flag, relres, iter] = lsqr(A, b, 1e-12, 20, M1, M2)
``````


== Voir aussi

#nlink(<linear_algebra:6_iterative_solvers.lsmr>)[lsmr];, #nlink(<linear_algebra:6_iterative_solvers.gmres>)[gmres];, #nlink(<linear_algebra:6_iterative_solvers.bicgstab>)[bicgstab];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [ajout de la couverture single, single complexe, preconditionneur a droite, vecteur initial et historique des residus.],
)

// Auteur: Allan CORNET
