#import "../../nelson_help.typ": *

= triplot <graphics:1_plots.7_surfaces_volumes_polygons.triplot>

Trace de triangles 2-D

== Syntaxe

- #raw("triplot(T, x, y)");
- #raw("triplot(T, x, y, LineSpec)");
- #raw("triplot(TO)");
- #raw("triplot(..., Name, Value)");
- #raw("h = triplot(...)");

== Description

#strong[triplot]; trace un maillage triangulaire 2-D depuis une matrice de connectivite ou un objet de triangulation.


== Exemple

Tracer une triangulation et les centres inscrits de ses triangles.

``````matlab
rng default;
P = rand([30 2]);
DT = delaunayTriangulation(P);
IC = incenter(DT);
triplot(DT)
hold on
plot(IC(:, 1), IC(:, 2), '*r')
``````


#align(center)[#image("triplot_1.svg")]

== Voir aussi

#nlink(<geometry:delaunayTriangulation>)[delaunayTriangulation];, #nlink(<geometry:triangulation>)[triangulation];, #nlink(<geometry:delaunay>)[delaunay];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
