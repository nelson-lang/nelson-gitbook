#import "../../nelson_help.typ": *

= streamslice <graphics:1_plots.5_vector_fields.streamslice>

Afficher la direction d'un champ vectoriel sur un plan.

== Syntaxe

- #raw("streamslice(U, V)");
- #raw("streamslice(X, Y, U, V)");
- #raw("streamslice(X, Y, Z, U, V, W, sx, sy, sz)");
- #raw("streamslice(parent, ...)");
- #raw("h = streamslice(...)");
- #raw("[vertices, arrowVertices] = streamslice(...)");

== Description

#strong[streamslice]; affiche la direction d'un champ vectoriel au moyen d'objets line pour les chemins de courant et les fleches de direction.

 Avec deux sorties, #strong[streamslice]; retourne des tableaux de cellules de sommets de lignes de courant et de sommets de fleches au lieu de tracer.


== Exemple

Afficher la direction dans un champ 2-D.

``````matlab
[x, y] = meshgrid(-2:2, -2:2);
streamslice(x, y, -y, x);
``````


#align(center)[#image("streamslice_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.5_vector_fields.streamline>)[streamline];, #nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver];.
