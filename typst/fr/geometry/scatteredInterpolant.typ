#import "nelson_help.typ": *

= scatteredInterpolant <geometry:scatteredInterpolant>

Objet d'interpolation de donnees dispersees

== Syntaxe

- #raw("F = scatteredInterpolant(P, V)");
- #raw("F = scatteredInterpolant(x, y, V)");
- #raw("F = scatteredInterpolant(x, y, z, V)");
- #raw("F = scatteredInterpolant(P, V, method)");
- #raw("F = scatteredInterpolant(P, V, method, extrapolationMethod)");
- #raw("Vq = evaluate(F, Q)");
- #raw("Vq = F(xq, yq)");

== Description

#strong[scatteredInterpolant]; stocke des points et valeurs disperses pour des requetes d'interpolation repetees.


== Exemple

Evaluer un interpolant en un point de requete.

``````matlab
P = [0 0; 1 0; 1 1; 0 1];
V = P(:, 1) + P(:, 2);
F = scatteredInterpolant(P, V);
Vq = evaluate(F, [0.25 0.25])
``````


== Voir aussi

#nlink(<geometry:griddata>)[griddata];, #nlink(<geometry:delaunayTriangulation>)[delaunayTriangulation];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
