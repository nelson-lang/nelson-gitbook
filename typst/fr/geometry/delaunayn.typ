#import "nelson_help.typ": *

= delaunayn <geometry:delaunayn>

Triangulation de Delaunay en N dimensions

== Syntaxe

- #raw("T = delaunayn(P)");
- #raw("T = delaunayn(P, options)");

== Description

#strong[delaunayn]; calcule une triangulation de Delaunay pour les points de #strong[P];.

 Les lignes de #strong[T]; contiennent des indices a partir de un dans #strong[P];.


== Exemple

Triangulation de Delaunay de points plans.

``````matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
T = delaunayn(P)
``````


== Voir aussi

#nlink(<geometry:delaunay>)[delaunay];, #nlink(<geometry:triangulation>)[triangulation];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
