#import "../nelson_help.typ": *

= norm <elementary_functions:2_elementary_math.norm>

Normes de matrices et de vecteurs

== Syntaxe

- #raw("R = norm(V)");
- #raw("R = norm(V, p)");
- #raw("R = norm(V, 'fro')");
- #raw("R = norm(M)");
- #raw("R = norm(M, 1)");
- #raw("R = norm(M, 2)");
- #raw("R = norm(M, Inf)");
- #raw("R = norm(M, 'fro')");

== Argument d'entrée

/ M: une matrice 2D single ou double
/ V: un vecteur single ou double
/ p: un scalaire (norme p)

== Argument de sortie

/ R: résultat de norm : scalaire.

== Description

#strong[norm]; calcule la norme d'un vecteur ou d'une matrice.

 La norme de Frobenius de M est égale à #strong[sqrt (sum (diag (M' \* M)))]; .


== Exemples

``````matlab
M = [1 2; 3 4];
norm(M)
norm(M, 1)
norm(M, 2)
norm(M, Inf)
norm(M, 'fro')
V = [1 2 3 4];
norm(V)
norm(V, 1)
norm(V, 2)
norm(V, Inf)
norm(V, 'fro')
``````

``````matlab
x = ones(3000, 3000);
tic();R = norm(x);toc
``````


== Voir aussi

#nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
