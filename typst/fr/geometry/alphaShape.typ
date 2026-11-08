#import "nelson_help.typ": *

= alphaShape <geometry:alphaShape>

Objet alpha shape

== Syntaxe

- #raw("SHP = alphaShape(P)");
- #raw("SHP = alphaShape(x, y)");
- #raw("SHP = alphaShape(x, y, z)");
- #raw("SHP = alphaShape(..., alpha)");
- #raw("SHP = alphaShape(..., 'HoleThreshold', value, 'RegionThreshold', value)");
- #raw("K = boundaryFacets(SHP)");
- #raw("A = area(SHP)");
- #raw("plot(SHP)");

== Description

#strong[alphaShape]; stocke des points et parametres alpha pour les requetes de frontiere et de forme.


== Exemple

Creer et tracer un alpha shape.

``````matlab
[x, y] = meshgrid(linspace(-1, 1, 16));
P = [x(:), y(:)];
P(hypot(P(:, 1), P(:, 2)) > 1, :) = [];
SHP = alphaShape(P, 0.3);
A = area(SHP);
plot(SHP)
hold('on')
plot(P(:, 1), P(:, 2), '.')
``````


#align(center)[#image("alphaShape.svg")]

== Voir aussi

#nlink(<geometry:boundary>)[boundary];, #nlink(<geometry:convhull>)[convhull];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
