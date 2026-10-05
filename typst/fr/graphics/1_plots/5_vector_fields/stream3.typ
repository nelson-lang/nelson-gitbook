#import "../../nelson_help.typ": *

= stream3 <graphics:1_plots.5_vector_fields.stream3>

Calculer les sommets de lignes de courant 3-D depuis un champ vectoriel.

== Syntaxe

- #raw("vertices = stream3(U, V, W, startx, starty, startz)");
- #raw("vertices = stream3(X, Y, Z, U, V, W, startx, starty, startz)");
- #raw("vertices = stream3(..., options)");

== Description

#strong[stream3]; suit un champ vectoriel 3-D depuis chaque point de depart et rend les sommets par lesquels il est passe. Rien n'est trace : passer le resultat a #strong[streamline]; pour le voir.

 Le resultat est un tableau de cellules avec une entree par point de depart, chacune un tableau N-by-3 de coordonnees #strong[\[x, y, z\]]; dont la premiere ligne est le point de depart lui-meme. Un point de depart hors du champ donne une entree vide ; un point de depart que le champ ne deplace pas garde son unique sommet.

 Sans #strong[X];, #strong[Y]; ni #strong[Z]; le champ est indexe a partir de 1.

 L'entree optionnelle #strong[options]; vaut #strong[\[stepsize\]]; ou #strong[\[stepsize, maxvert\]];. #strong[stepsize]; se compte en cellules de grille et vaut 0.1 par defaut. #strong[maxvert]; est le nombre maximal de sommets a produire, point de depart compris, et vaut 500 par defaut.


== Exemple

Tracer une spirale ascendante dans un champ tournant.

``````matlab
[x, y, z] = meshgrid(-2:0.5:2, -2:0.5:2, -2:0.5:2);
vertices = stream3(x, y, z, -y, x, 0.2 * ones(size(x)), 1, 0, -2);
streamline(vertices);
``````


#align(center)[#image("stream3_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.5_vector_fields.stream2>)[stream2];, #nlink(<graphics:1_plots.5_vector_fields.streamline>)[streamline];, #nlink(<graphics:1_plots.5_vector_fields.coneplot>)[coneplot];.
