#import "../../nelson_help.typ": *

= stream2 <graphics:1_plots.5_vector_fields.stream2>

Calculer les sommets de lignes de courant 2-D depuis un champ vectoriel.

== Syntaxe

- #raw("vertices = stream2(U, V, startx, starty)");
- #raw("vertices = stream2(X, Y, U, V, startx, starty)");
- #raw("vertices = stream2(..., options)");

== Description

#strong[stream2]; suit un champ vectoriel 2-D depuis chaque point de depart et rend les sommets par lesquels il est passe. Rien n'est trace : passer le resultat a #strong[streamline]; pour le voir.

 Le resultat est un tableau de cellules avec une entree par point de depart, chacune un tableau N-by-2 de coordonnees #strong[\[x, y\]]; dont la premiere ligne est le point de depart lui-meme. Un point de depart hors du champ donne une entree vide ; un point de depart que le champ ne deplace pas garde son unique sommet.

 Sans #strong[X]; ni #strong[Y]; le champ est indexe a partir de 1, comme le donnerait #strong[meshgrid(1:size(U, 2), 1:size(U, 1))];.

 L'entree optionnelle #strong[options]; vaut #strong[\[stepsize\]]; ou #strong[\[stepsize, maxvert\]];. #strong[stepsize]; se compte en cellules de grille et vaut 0.1 par defaut. #strong[maxvert]; est le nombre maximal de sommets a produire, point de depart compris, et vaut 500 par defaut.


== Exemple

Tracer deux lignes de courant d'un champ tournant.

``````matlab
[x, y] = meshgrid(-2:0.25:2, -2:0.25:2);
vertices = stream2(x, y, -y, x, [1 1.5], [0 0]);
streamline(vertices);
``````


#align(center)[#image("stream2_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.5_vector_fields.stream3>)[stream3];, #nlink(<graphics:1_plots.5_vector_fields.streamline>)[streamline];, #nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver];.
