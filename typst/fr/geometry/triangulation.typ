#import "nelson_help.typ": *

= triangulation <geometry:triangulation>

Objet de triangulation

== Syntaxe

- #raw("TR = triangulation(T, P)");
- #raw("TR = triangulation(T, x, y)");
- #raw("TR = triangulation(T, x, y, z)");
- #raw("E = edges(TR)");
- #raw("[idx, bary] = pointLocation(TR, Q)");

== Description

#strong[triangulation]; stocke des points et une liste de connectivite et fournit des requetes topologiques.


== Exemple

Creer une triangulation et localiser un point.

``````matlab
P = [0 0; 1 0; 1 1; 0 1];
T = delaunayn(P);
TR = triangulation(T, P);
[idx, bary] = pointLocation(TR, [0.25 0.25])
``````


== Voir aussi

#nlink(<geometry:delaunayTriangulation>)[delaunayTriangulation];, #nlink(<geometry:delaunayn>)[delaunayn];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
