#import "../nelson_help.typ": *

= gradient <linear_algebra:1_linear_systems.gradient>

Gradient numérique.

== Syntaxe

- #raw("FX = gradient(F)");
- #raw("[FX, FY] = gradient(F)");
- #raw("[FX, FY, FZ, ..., FN] = gradient(F)");
- #raw("[...] = gradient(F, h)");
- #raw("[...] = gradient(F, hx, hy, ... , hN)");

== Argument d'entrée

/ F: Tableau d'entrée : vecteur, matrice ou tableau multidimensionnel.
/ F: Tableau d'entrée : vecteur, matrice ou tableau multidimensionnel.
/ hx, hy, ..., hN: Espacement entre les points : vecteur, scalaire ou 1 (par défaut).

== Argument de sortie

/ FX, FY, FZ, ..., FN: Gradients numériques : tableau.

== Description

#strong[gradient(F)]; calcule le gradient numérique unidimensionnel du vecteur ou de la matrice F.

 La sortie FX représente les différences dans la direction x (horizontale), correspondant à ∂F\/∂x.

 Elle suppose que l'espacement entre les points est 1.

 #strong[gradient(F, h)]; permet de spécifier un espacement uniforme h entre les points dans chaque direction.

 Cet espacement uniforme peut également être spécifié individuellement pour chaque dimension de F en utilisant #strong[gradient(F, hx, hy, ..., hN)];.


== Exemple

``````matlab
[X, Y] = meshgrid(-2:0.2:2);
Z = X .* exp(-X.^2 - Y.^2);
[U, V] = gradient(Z, 0.2, 0.2);

``````


== Voir aussi

#nlink(<linear_algebra:1_linear_systems.diff>)[diff];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [version initiale],
)

// Auteur: Allan CORNET
