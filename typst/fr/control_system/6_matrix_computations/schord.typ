#import "../nelson_help.typ": *

= schord <control_system:6_matrix_computations.schord>

Ordonne une decomposition de Schur.

== Syntaxe

- #raw("[Qo, To] = schord(Qi, Ti, index)");

== Argument d'entrée

/ Qi: matrice de vecteurs de Schur orthogonale ou unitaire.
/ Ti: matrice de Schur triangulaire superieure.
/ index: cles d'ordre pour les entrees diagonales.

== Argument de sortie

/ Qo: matrice de vecteurs de Schur ordonnee.
/ To: matrice de Schur ordonnee.

== Description

#strong[schord]; applique des rotations unitaires adjacentes pour ordonner une decomposition de Schur selon les valeurs croissantes de #strong[index];.


== Exemple

``````matlab

A = [1 2; 3 4];
[Q, T] = schur(A);
[Qo, To] = schord(Q, T, [2 1])

``````


== Voir aussi

#nlink(<linear_algebra:3_eigen_singular_values.schur>)[schur];, #nlink(<control_system:6_matrix_computations.bdschur>)[bdschur];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
