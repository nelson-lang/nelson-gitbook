#import "../nelson_help.typ": *

= svd <linear_algebra:3_eigen_singular_values.svd>

Décomposition en valeurs singulières (SVD).

== Syntaxe

- #raw("s = svd(M)");
- #raw("[U, S, V] = svd(M)");
- #raw("[U, S, V] = svd(M, 0)");
- #raw("[U, S, V] = svd(M, 'econ')");

== Argument d'entrée

/ M: une valeur numérique : matrice (double ou simple précision)

== Argument de sortie

/ s: vecteur réel (valeurs singulières) en ordre décroissant.
/ U: valeurs singulières à gauche.
/ S: matrice diagonale réelle (valeurs singulières)
/ V: valeurs singulières à droite.

== Description

#strong[svd]; calcule la décomposition en valeurs singulières d'une matrice.

 Pour une matrice

 #latex("M"); de taille

 #latex("m \\times n"); , la SVD est :

 #latex("M = U\\Sigma V^T"); où : 

- #latex("U"); est une matrice unitaire
- #latex("\\Sigma"); est une matrice diagonale
- #latex("V^T"); est une matrice unitaire

 Les valeurs singulières

 #latex("\\sigma_i"); sont arrangées en ordre décroissant :

 #latex("\\sigma_1 \\geq \\sigma_2 \\geq \\ldots \\geq 0");
== Exemple

``````matlab
X = eye(3, 3);
s = svd(X)
[U, S, V] = svd(X)
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
