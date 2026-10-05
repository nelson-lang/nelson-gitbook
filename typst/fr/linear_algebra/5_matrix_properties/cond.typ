#import "../nelson_help.typ": *

= cond <linear_algebra:5_matrix_properties.cond>

Nombre de condition pour l'inversion.

== Syntaxe

- #raw("c = rcond(A, p)");

== Argument d'entrée

/ A: une valeur numérique : matrice carrée ou rectangulaire (double ou simple précision)
/ p: type de norme : Inf, 'fro', 1, 2 (par défaut)

== Argument de sortie

/ c: une valeur numérique : un scalaire.

== Description

#strong[c \= cond(A)]; retourne le nombre de condition en norme 2 pour l'inversion.

 #strong[c \= cond(A, p)]; retourne le nombre de condition en norme p, où p peut être 1, 2, Inf ou 'fro'.


== Exemple

``````matlab
X = rand(10, 10);
r = cond(X)
``````


== Voir aussi

#nlink(<linear_algebra:5_matrix_properties.rcond>)[rcond];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
