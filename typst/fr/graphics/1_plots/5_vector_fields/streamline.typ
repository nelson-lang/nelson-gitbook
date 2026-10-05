#import "../../nelson_help.typ": *

= streamline <graphics:1_plots.5_vector_fields.streamline>

Afficher des lignes de courant depuis un champ vectoriel.

== Syntaxe

- #raw("streamline(U, V, sx, sy)");
- #raw("streamline(vertices)");
- #raw("streamline(X, Y, U, V, sx, sy)");
- #raw("streamline(X, Y, Z, U, V, W, sx, sy, sz)");
- #raw("streamline(..., options)");
- #raw("streamline(parent, ...)");
- #raw("h = streamline(...)");

== Description

#strong[streamline]; trace des chemins dans des champs vectoriels 2-D ou 3-D depuis les points de depart fournis.

 #strong[streamline(vertices)]; trace des sommets de lignes de courant pre-calcules fournis sous forme de tableau de cellules. Chaque cellule contient un tableau numerique N-by-2 ou N-by-3.

 L'entree optionnelle #strong[options]; vaut #strong[\[stepsize\]]; ou #strong[\[stepsize, maxvert\]];. #strong[stepsize]; se compte en cellules de grille et vaut 0.1 par defaut. #strong[maxvert]; est le nombre maximal de sommets a produire, point de depart compris, et vaut 500 par defaut.


== Exemple

Tracer une ligne de courant 2-D.

``````matlab
[x, y] = meshgrid(-2:2, -2:2);
streamline(x, y, -y, x, 0, 0);
``````


#align(center)[#image("streamline_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.5_vector_fields.stream2>)[stream2];, #nlink(<graphics:1_plots.5_vector_fields.stream3>)[stream3];, #nlink(<graphics:1_plots.5_vector_fields.streamslice>)[streamslice];, #nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver];.
