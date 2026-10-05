#import "nelson_help.typ": *

= griddata <geometry:griddata>

Interpolation de donnees dispersees

== Syntaxe

- #raw("Vq = griddata(P, V, xq, yq)");
- #raw("Vq = griddata(x, y, V, xq, yq)");
- #raw("Vq = griddata(x, y, z, V, xq, yq, zq)");
- #raw("Vq = griddata(..., method)");
- #raw("[Xq, Yq, Vq] = griddata(x, y, V, xq, yq)");

== Description

#strong[griddata]; interpole des echantillons disperses aux coordonnees de requete.


== Exemple

Interpolation lineaire de donnees dispersees planes.

``````matlab
x = [0; 1; 1; 0];
y = [0; 0; 1; 1];
V = x + y;
Vq = griddata(x, y, V, 0.25, 0.25)
``````


== Voir aussi

#nlink(<geometry:scatteredInterpolant>)[scatteredInterpolant];, #nlink(<geometry:delaunayn>)[delaunayn];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
