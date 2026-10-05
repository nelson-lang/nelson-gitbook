#import "../nelson_help.typ": *

= subspace <linear_algebra:1_linear_systems.subspace>

Angle entre deux sous-espaces.

== Syntaxe

- #raw("T = subspace(A, B)");

== Argument d'entrée

/ A: vector or matrix (real or single)
/ B: vector or matrix (real or single)

== Argument de sortie

/ T: scalar: angle.

== Description

#strong[T \= subspace(A, B)]; calcule l'angle entre deux sous-espaces spécifiés par les colonnes de #strong[A]; et #strong[B];.


== Exemple

``````matlab
M = [1   1   1   1   1   1   1   1;
1  -1   1  -1   1  -1   1  -1;
1   1  -1  -1   1   1  -1  -1;
1  -1  -1   1   1  -1  -1   1;
1   1   1   1  -1  -1  -1  -1;
1  -1   1  -1  -1   1  -1   1;
1   1  -1  -1  -1  -1   1   1;
1  -1  -1   1  -1   1   1  -1];
A = M(:, 2:4);
B = M(:, 5:8);
R = subspace(A, B)

``````


== Voir aussi

#nlink(<linear_algebra:1_linear_systems.orth>)[orth];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
