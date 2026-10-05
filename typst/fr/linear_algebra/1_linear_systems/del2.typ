#import "../nelson_help.typ": *

= del2 <linear_algebra:1_linear_systems.del2>

Laplacien discret.

== Syntaxe

- #raw("L = del2(U)");
- #raw("L = del2(U, h)");
- #raw("L = del2(U, hx, hy)");

== Argument d'entrée

/ U: Tableau d'entree : vecteur, matrice ou tableau multidimensionnel.
/ h: Espacement scalaire uniforme entre les points dans chaque direction, 1 (par defaut).
/ hx, hy: Espacement scalaire entre les points, hx le long des colonnes (direction x) et hy le long des lignes (direction y).

== Argument de sortie

/ L: Laplacien discret, tableau de meme taille et de meme classe que U.

== Description

#strong[del2(U)]; retourne une approximation discrete du Laplacien de U divisee par 2\*ndims(U).

 Pour un element interieur d'une matrice, la valeur est la moyenne de ses quatre voisins moins l'element lui-meme : L(i,j) \= (U(i-1,j) + U(i+1,j) + U(i,j-1) + U(i,j+1))\/4 - U(i,j).

 Sur les bords, une extrapolation par difference seconde est utilisee afin que L ait la meme taille que U.

 #strong[del2(U, h)]; utilise l'espacement uniforme h dans chaque direction, et #strong[del2(U, hx, hy)]; utilise l'espacement hx le long des colonnes et hy le long des lignes.


== Exemple

``````matlab
L = del2(magic(4))
``````


== Voir aussi

#nlink(<linear_algebra:1_linear_systems.gradient>)[gradient];, #nlink(<linear_algebra:1_linear_systems.diff>)[diff];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
