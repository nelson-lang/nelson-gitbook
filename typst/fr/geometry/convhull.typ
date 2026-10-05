#import "nelson_help.typ": *

= convhull <geometry:convhull>

Enveloppe convexe de points 2-D ou 3-D

== Syntaxe

- #raw("K = convhull(P)");
- #raw("K = convhull(x, y)");
- #raw("K = convhull(x, y, z)");
- #raw("K = convhull(..., 'Simplify', tf)");
- #raw("[K, A] = convhull(x, y)");
- #raw("convhull(P)");

== Description

#strong[convhull]; calcule l'enveloppe convexe de points plans ou spatiaux.

 Sans sortie, pour des points plans, la fonction trace l'enveloppe.


== Exemple

Calculer et tracer une enveloppe convexe plane.

``````matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
[K, A] = convhull(P);
convhull(P)
``````


== Voir aussi

#nlink(<geometry:convhulln>)[convhulln];, #nlink(<geometry:boundary>)[boundary];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
