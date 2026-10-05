#import "nelson_help.typ": *

= delaunayTriangulation <geometry:delaunayTriangulation>

Objet de triangulation de Delaunay

== Syntaxe

- #raw("DT = delaunayTriangulation()");
- #raw("DT = delaunayTriangulation(P)");
- #raw("DT = delaunayTriangulation(P, C)");
- #raw("DT = delaunayTriangulation(x, y)");
- #raw("DT = delaunayTriangulation(x, y, C)");
- #raw("DT = delaunayTriangulation(x, y, z)");
- #raw("K = convexHull(DT)");
- #raw("[V, C] = voronoiDiagram(DT)");

== Description

#strong[delaunayTriangulation]; construit un objet de triangulation depuis des points et fournit des requetes geometriques associees.


== Exemple

Tracer une triangulation et les centres inscrits des triangles.

``````matlab
rng default;
P = rand([30 2]);
DT = delaunayTriangulation(P)
IC = incenter(DT);
triplot(DT)
hold on
plot(IC(:, 1), IC(:, 2), '*r')
``````


== Voir aussi

#nlink(<geometry:triangulation>)[triangulation];, #nlink(<geometry:delaunay>)[delaunay];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
