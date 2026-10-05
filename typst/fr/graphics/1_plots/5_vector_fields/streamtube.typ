#import "../../nelson_help.typ": *

= streamtube <graphics:1_plots.5_vector_fields.streamtube>

Afficher des chemins de courant avec un style tube.

== Syntaxe

- #raw("streamtube(U, V, W, sx, sy, sz)");
- #raw("streamtube(X, Y, Z, U, V, W, sx, sy, sz)");
- #raw("streamtube(vertices)");
- #raw("streamtube(vertices, width)");
- #raw("h = streamtube(...)");

== Description

#strong[streamtube]; affiche des chemins de courant 3-D sous forme de surfaces tube.

 #strong[streamtube(vertices)]; utilise des sommets de lignes de courant pre-calcules. Les handles retournes sont des objets surface.


== Exemple

Afficher un chemin avec un style tube.

``````matlab
t = 0:.15:2;
vertices = {[cos(t)' sin(t)' t']};
streamtube(vertices);
``````


#align(center)[#image("streamtube_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.5_vector_fields.streamline>)[streamline];, #nlink(<graphics:1_plots.5_vector_fields.streamribbon>)[streamribbon];.
