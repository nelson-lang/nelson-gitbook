#import "../../nelson_help.typ": *

= streamribbon <graphics:1_plots.5_vector_fields.streamribbon>

Afficher des chemins de courant avec un style ruban.

== Syntaxe

- #raw("streamribbon(U, V, W, sx, sy, sz)");
- #raw("streamribbon(X, Y, Z, U, V, W, sx, sy, sz)");
- #raw("streamribbon(vertices, twistangle)");
- #raw("streamribbon(..., width)");
- #raw("h = streamribbon(...)");

== Description

#strong[streamribbon]; affiche des chemins de courant 3-D sous forme de surfaces ruban.

 #strong[streamribbon(vertices, twistangle)]; utilise des sommets de lignes de courant pre-calcules et un tableau de cellules d'angles de torsion. Les handles retournes sont des objets surface.


== Exemple

Afficher un chemin avec un style ruban.

``````matlab
t = 0:.15:2;
vertices = {[cos(t)' sin(t)' t']};
twistangle = {cos(t)'};
streamribbon(vertices, twistangle);
``````


#align(center)[#image("streamribbon_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.5_vector_fields.streamline>)[streamline];, #nlink(<graphics:1_plots.5_vector_fields.streamtube>)[streamtube];.
