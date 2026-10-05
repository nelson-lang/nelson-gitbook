#import "nelson_help.typ": *

= voronoi <geometry:voronoi>

Diagramme de Voronoi de points plans

== Syntaxe

- #raw("[vx, vy] = voronoi(P)");
- #raw("[vx, vy] = voronoi(x, y)");
- #raw("[vx, vy] = voronoi(x, y, T)");
- #raw("h = voronoi(...)");
- #raw("voronoi(P)");

== Description

#strong[voronoi]; calcule les segments du diagramme de Voronoi pour des points plans.

 Sans sortie, la fonction trace le diagramme.


== Exemple

Tracer un diagramme de Voronoi.

``````matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
voronoi(P)
``````


== Voir aussi

#nlink(<geometry:voronoin>)[voronoin];, #nlink(<geometry:delaunay>)[delaunay];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
