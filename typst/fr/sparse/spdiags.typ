#import "nelson_help.typ": *

= spdiags <sparse:spdiags>

Extrait ou cree les diagonales d'une matrice sparse.

== Syntaxe

- #raw("B = spdiags(A)");
- #raw("[B, d] = spdiags(A)");
- #raw("S = spdiags(B, d, A)");
- #raw("S = spdiags(B, d, m, n)");

== Argument d'entrée

/ A: une matrice sparse ou pleine.
/ B: une matrice pleine dont les colonnes contiennent les valeurs diagonales.
/ d: decalages de diagonales.
/ m, n: dimensions de la matrice sparse de sortie.

== Argument de sortie

/ B: matrice dense contenant les diagonales extraites.
/ d: decalages de diagonales.
/ S: une matrice sparse.

== Description

#strong[spdiags]; extrait les diagonales stockees d'une matrice, remplace des diagonales selectionnees, ou construit une matrice sparse a partir de colonnes de diagonales.


== Exemple

``````matlab
A = sparse([1 0 2; 0 3 0; 4 0 5]);
[B, d] = spdiags(A)
R = spdiags([10; 20; 30], 0, A)
S = spdiags(B, d, 3, 3)
``````


== Voir aussi

#nlink(<constructors_functions:diag>)[diag];, #nlink(<sparse:sparse>)[sparse];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
