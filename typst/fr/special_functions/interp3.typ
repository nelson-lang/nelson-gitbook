#import "nelson_help.typ": *

= interp3 <special_functions:interp3>

Interpolation de donnees grillees 3-D au format meshgrid

== Syntaxe

- #raw("Vq = interp3(X, Y, Z, V, Xq, Yq, Zq)");
- #raw("Vq = interp3(V, Xq, Yq, Zq)");
- #raw("Vq = interp3(V)");
- #raw("Vq = interp3(V, k)");
- #raw("Vq = interp3(..., method)");
- #raw("Vq = interp3(..., method, extrapval)");

== Argument d'entrée

/ X, Y, Z: Points de grille : vecteurs ou tableaux meshgrid.
/ V: Valeurs : tableau 3-D reel ou complexe.
/ Xq, Yq, Zq: Points de requete.
/ method: 'linear', 'nearest', 'cubic', 'makima' ou 'spline'.

== Argument de sortie

/ Vq: Valeurs interpolees.

== Description

#strong[interp3]; interpole des donnees grillees 3-D avec les conventions meshgrid. La grille par defaut est X\=1:size(V,2), Y\=1:size(V,1), Z\=1:size(V,3).

 Les methodes cubiques utilisent un stencil natif tensoriel a quatre points, avec repli lineaire sur les dimensions qui ont moins de quatre echantillons.

 #strong[interp3(V)]; et #strong[interp3(V,k)]; raffinent la grille par defaut. Les vecteurs de grille doivent etre strictement monotones.


== Exemples

``````matlab
V = reshape(1:8, [2 2 2]);
Vq = interp3(V, 1.5, 1.5, 1.5)
``````

``````matlab
V = reshape(1:8, [2 2 2]);
Vq = interp3(V, 1)
``````

``````matlab
x = 1:2;
y = 1:2;
z = 1:2;
[X,Y,Z] = meshgrid(x, y, z);
V = reshape(1:8, [2 2 2]);
Vq = interp3(X, Y, Z, V, 1.5, 1.5, 1.5, 'linear')
``````

``````matlab
V = reshape(1:8, [2 2 2]);
Vq = interp3(V, 0, 1.5, 1.5, 'linear', -1)
``````


== Voir aussi

#nlink(<special_functions:interp1>)[interp1];, #nlink(<special_functions:interp2>)[interp2];, #nlink(<special_functions:interpn>)[interpn];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

// Auteur: Allan CORNET
