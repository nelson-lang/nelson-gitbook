#import "../nelson_help.typ": *

= bicg <linear_algebra:6_iterative_solvers.bicg>

Methode du gradient biconjugue pour systemes lineaires sparse.

== Syntaxe

- #raw("x = bicg(A, b)");
- #raw("x = bicg(A, b, tol, maxit)");
- #raw("x = bicg(A, b, tol, maxit, M1, M2, x0)");
- #raw("[x, flag, relres, iter, resvec] = bicg(...)");

== Argument d'entrée

/ A: matrice sparse carree des coefficients.
/ b: vecteur second membre.
/ tol: tolerance relative sur le residu. La valeur par defaut est 1e-6.
/ maxit: nombre maximal d'iterations.
/ M1, M2: preconditionneurs optionnels : matrices carrees sparse ou pleines, vecteurs diagonaux ou handles de fonction. Les handles de fonction doivent accepter un vecteur et un indicateur de transposition.
/ x0: estimation initiale.

== Argument de sortie

/ x: solution calculee.
/ flag: 0 si la convergence est atteinte, 1 si maxit est atteint, 4 en cas de rupture numerique.
/ relres: norme relative du residu.
/ iter: nombre d'iterations effectuees.
/ resvec: historique des normes de residu.

== Description

#strong[bicg]; resout #strong[A\*x \= b]; avec la methode du gradient biconjugue.

 La methode vise les systemes sparse non symetriques. Elle supporte les preconditionneurs matriciels sparse ou pleins, les preconditionneurs diagonaux vectoriels et les handles de fonction.

 Lorsque #strong[M1]; ou #strong[M2]; est une matrice, #strong[bicg]; l'applique par resolution lineaire interne. Un preconditionneur vectoriel est interprete comme la diagonale d'un preconditionneur carre. Un handle de fonction doit accepter un vecteur et un indicateur de transposee, puis retourner un vecteur de meme longueur.

 Les matrices sparse single et sparse single complexes sont prises en charge. Si #strong[M1];, #strong[M2]; ou #strong[x0]; est complexe, le calcul utilise le chemin complexe adapte.


== Exemples

``````matlab
A = sparse([4 1 0; 2 3 1; 0 1 2]);
b = [1; 2; 3];
[x, flag, relres, iter, resvec] = bicg(A, b, 1e-12, 20)

``````

Resolution avec preconditionneurs matriciels separes.

``````matlab
A = sparse([4 1; 2 3]);
b = [5; 5];
M1 = [2 0; 0 1];
M2 = [2 0.5; 2 3];
[x, flag, relres, iter] = bicg(A, b, 1e-12, 10, M1, M2)
``````

Resolution sparse single complexe.

``````matlab
A = sparse(single([4 1i; 2 3]));
b = single([1; 2]);
[x, flag] = bicg(A, b, 1e-6, 20)
``````


== Voir aussi

#nlink(<linear_algebra:6_iterative_solvers.bicgstab>)[bicgstab];, #nlink(<linear_algebra:6_iterative_solvers.cgs>)[cgs];, #nlink(<linear_algebra:6_iterative_solvers.gmres>)[gmres];, #nlink(<linear_algebra:7_preconditioners.ilu>)[ilu];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [prise en charge des donnees sparse single, sparse single complexes, des preconditionneurs matriciels et des handles de fonction.],
)

// Auteur: Allan CORNET
