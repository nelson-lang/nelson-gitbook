#import "nelson_help.typ": *

= boundary <geometry:boundary>

Facettes frontiere d'un ensemble de points

== Syntaxe

- #raw("K = boundary(P)");
- #raw("K = boundary(x, y)");
- #raw("K = boundary(x, y, z)");
- #raw("K = boundary(..., s)");
- #raw("[K, A] = boundary(x, y)");
- #raw("boundary(P)");

== Description

#strong[boundary]; retourne les facettes frontiere de points plans ou spatiaux.

 Sans sortie, la fonction trace la frontiere.


== Exemple

Calculer et tracer la frontiere de points plans.

``````matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
K = boundary(P);
boundary(P)
``````


== Voir aussi

#nlink(<geometry:alphaShape>)[alphaShape];, #nlink(<geometry:convhull>)[convhull];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
