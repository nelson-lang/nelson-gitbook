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
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
SHP = alphaShape(P);
A = area(SHP);
plot(SHP)
``````


== Voir aussi

#nlink(<geometry:boundary>)[boundary];, #nlink(<geometry:convhull>)[convhull];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
