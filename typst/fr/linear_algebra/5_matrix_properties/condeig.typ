#import "../nelson_help.typ": *

= condeig <linear_algebra:5_matrix_properties.condeig>

Nombre de condition relatif aux valeurs propres.

== Syntaxe

- #raw("C = condeig(A)");
- #raw("[V, D, S] = condeig(A)");

== Argument d'entrée

/ A: matrice d'entrée

== Argument de sortie

/ C: a vector of condition numbers for the eigenvalues of A.

== Description

#strong[C \= condeig(A)]; retourne un vecteur de nombres de condition pour les valeurs propres de #strong[A];.


== Exemple

``````matlab
A = [10, 20; 30, 40];
S = condeig(A)
``````


== Voir aussi

#nlink(<linear_algebra:3_eigen_singular_values.eig>)[eig];, #nlink(<linear_algebra:5_matrix_properties.cond>)[cond];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
