#import "nelson_help.typ": *

= delaunay <geometry:delaunay>

Triangulation de Delaunay de points 2-D ou 3-D

== Syntaxe

- #raw("T = delaunay(P)");
- #raw("T = delaunay(x, y)");
- #raw("T = delaunay(x, y, z)");

== Description

#strong[delaunay]; calcule une triangulation de Delaunay a partir de vecteurs de coordonnees ou d'une matrice de points.


== Exemple

Tracer les triangles de Delaunay de points plans aleatoires.

``````matlab
rng default;
x = rand([20, 1]);
y = rand([20, 1]);
DT = delaunay(x, y);
triplot(DT, x, y)
``````


== Voir aussi

#nlink(<geometry:delaunayn>)[delaunayn];, #nlink(<geometry:delaunayTriangulation>)[delaunayTriangulation];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
