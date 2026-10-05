#import "../nelson_help.typ": *

= pcg <linear_algebra:6_iterative_solvers.pcg>

Methode des gradients conjugues preconditionnes.

== Syntaxe

- #raw("x = pcg(A, b)");
- #raw("x = pcg(A, b, tol, maxit)");
- #raw("x = pcg(A, b, tol, maxit, M1, M2, x0)");
- #raw("[x, flag, relres, iter, resvec] = pcg(...)");

== Argument d'entrée

/ A: une matrice carree sparse flottante symetrique ou hermitienne definie positive.
/ b: un vecteur second membre flottant.
/ tol: tolerance de convergence scalaire reelle finie. La valeur par defaut est 1e-6.
/ maxit: nombre maximal d'iterations, entier positif ou nul.
/ M1, M2: matrices sparse optionnelles de preconditionnement ou vecteurs diagonaux.
/ x0: vecteur initial optionnel.

== Argument de sortie

/ x: vecteur solution calcule.
/ flag: 0 si la convergence est atteinte, 1 si maxit est atteint, 4 en cas de rupture numerique.
/ relres: norme relative du residu.
/ iter: nombre d'iterations.
/ resvec: historique des normes de residu.

== Description

#strong[pcg]; resout #strong[A \* x \= b]; avec la methode des gradients conjugues preconditionnes.

 La methode est destinee aux matrices sparse flottantes symetriques ou hermitiennes definies positives.

 Les matrices sparse single et sparse single complexes sont prises en charge. Si #strong[M1];, #strong[M2]; ou #strong[x0]; est complexe, le calcul utilise le chemin complexe adapte.


== Exemples

``````matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
b = [15; 10; 10];
[x, flag, relres, iter] = pcg(A, b, 1e-12, 20)

``````

``````matlab
A = sparse([4 -1 0; -1 4 -1; 0 -1 3]);
b = [15; 10; 10];
L = ichol(A);
[x, flag, relres, iter] = pcg(A, b, 1e-12, 20, L, L')

``````

Resolution sparse single complexe avec ichol.

``````matlab
A = sparse(single([4 1i; -1i 3]));
b = single([1; 2]);
L = ichol(A);
[x, flag] = pcg(A, b, 1e-6, 20, L, L')
``````


== Voir aussi

#nlink(<linear_algebra:6_iterative_solvers.bicgstab>)[bicgstab];, #nlink(<linear_algebra:7_preconditioners.ichol>)[ichol];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [prise en charge des donnees sparse single et sparse single complexes.],
)

// Auteur: Allan CORNET
