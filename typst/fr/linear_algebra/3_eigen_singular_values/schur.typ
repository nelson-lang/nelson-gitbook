#import "../nelson_help.typ": *

= schur <linear_algebra:3_eigen_singular_values.schur>

Décomposition de Schur.

== Syntaxe

- #raw("T = schur(M)");
- #raw("T = schur(M, 'real')");
- #raw("T = schur(M, 'complex')");
- #raw("[U, T] = schur(M)");
- #raw("[U, T] = schur(M, 'complex')");
- #raw("[U, T] = schur(M, 'real')");

== Argument d'entrée

/ M: une valeur numérique : scalaire ou matrice carrée (double ou simple précision)

== Argument de sortie

/ U: unitary matrix
/ T: upper triangular matrix

== Description

#strong[schur(M)]; calcule la décomposition de Schur.

 Avec le drapeau 'complex', la forme de Schur complexe est triangulaire supérieure avec les valeurs propres de M sur la diagonale.

 Si A est réelle, la forme de Schur réelle est retournée.

 Avec le drapeau 'real', la forme de Schur réelle place les valeurs propres réelles sur la diagonale et les valeurs propres complexes en blocs 2x2 sur la diagonale.


== Exemple

``````matlab
X = [1 2; 3 4];
[U, T] = schur(X)
[U, T] = schur(X * i, 'complex')
[U, T] = schur(X * i, 'real')
``````


== Voir aussi

#nlink(<linear_algebra:3_eigen_singular_values.eig>)[eig];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
