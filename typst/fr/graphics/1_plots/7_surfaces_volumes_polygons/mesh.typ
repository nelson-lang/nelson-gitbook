#import "../../nelson_help.typ": *

= mesh <graphics:1_plots.7_surfaces_volumes_polygons.mesh>

Tracé de surface en maillage (mesh).

== Syntaxe

- #raw("mesh(X, Y, Z)");
- #raw("mesh(Z)");
- #raw("mesh(Z, C)");
- #raw("mesh(X, Y, Z, C)");
- #raw("mesh(parent, ...)");
- #raw("mesh(..., propertyName, propertyValue)");
- #raw("go = mesh(...)");

== Argument d'entrée

/ X: Coordonnées x : vecteur ou matrice.
/ Y: Coordonnées y : vecteur ou matrice.
/ Z: Coordonnées z : vecteur ou matrice.
/ C: Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
/ parent: Un objet graphique scalaire : conteneur parent, spécifié comme axes.
/ propertyName: Une chaîne scalaire ou un vecteur ligne de caractères.
/ propertyValue: Une valeur.

== Argument de sortie

/ go: Un objet graphique : type surface.

== Description

#strong[mesh]; crée un maillage 3D (wireframe).

 Vous pouvez personnaliser l'apparence du tracé avec différentes options comme la couleur, l'éclairage et l'ombrage.


== Exemples

``````matlab
f = figure();
[X, Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R) ./ R;
mesh(X, Y, Z)
axis square
``````


#align(center)[#image("mesh_1.svg")]
``````matlab
f = figure();
F = str2func('@(z) z .^ 3 - 1');
x = linspace(-2, 2, 100);
y = linspace(-2, 2, 100);
[X, Y] = meshgrid(x, y);
Z = X + 1i*Y;
W = F(Z);
mesh(real(W), imag(W), abs(W))
xlabel('Real')
ylabel('Imaginary')
zlabel('Magnitude')
``````


#align(center)[#image("mesh_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
