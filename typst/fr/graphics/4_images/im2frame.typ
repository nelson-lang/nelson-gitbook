#import "../nelson_help.typ": *

= im2frame <graphics:4_images.im2frame>

Convertit une image en image de film.

== Syntaxe

- #raw("F = im2frame(RGB)");
- #raw("F = im2frame(X, map)");
- #raw("F = im2frame(X)");

== Argument d'entrée

/ RGB: Tableau numérique m-par-n-par-3 : Image en vraies couleurs, définie comme un tableau numérique m-par-n-par-3. Pour les images de type double, les valeurs doivent être comprises dans l'intervalle \[0, 1\].
/ X: Matrice m-par-n d'entiers : Image indexée (double ou uint8)
/ map: Matrice numérique c-par-3 : Palette de couleurs associée à l'image indexée X, définie comme une matrice numérique c-par-3 avec des valeurs comprises entre \[0, 1\]. Chaque ligne de la matrice représente un triplet RGB, spécifiant les composantes rouge, verte et bleue d'une couleur de la palette.

== Argument de sortie

/ F: une structure : Image de film avec deux champs : cdata et colormap.

== Description

#strong[F \= im2frame(RGB)]; convertit l'image en vraies couleurs #strong[RGB]; en une image de film #strong[F];.

 #strong[F \= im2frame(X, map)]; convertit l'image indexée #strong[X]; ainsi que sa palette de couleurs #strong[map]; en une image de film#strong[F];.

 #strong[F \= im2frame(X)]; convertit l'image indexée #strong[X]; en une image de film #strong[F];, en utilisant la palette de couleurs courante.


== Exemple

``````matlab
examples_directory = [modulepath('graphics', 'root'), '/', 'examples/'];
edit([examples_directory, 'movie/demo_movie.m']);
run([examples_directory, 'movie/demo_movie.m']);
``````


== Voir aussi

#nlink(<graphics:4_images.movie>)[movie];, #nlink(<graphics:4_images.frame2im>)[frame2im];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.13.0], [version initiale],
)

// Auteur: Allan CORNET
