#import "../../nelson_help.typ": *

= rgb2ind <image_processing:1_image_basics.1_image_types_color.rgb2ind>

Convertit une image RGB en image indexee.

== Syntaxe

- #raw("[X, map] = rgb2ind(RGB, n)");
- #raw("[X, map] = rgb2ind(RGB, n, dither_option)");
- #raw("[X, map] = rgb2ind(RGB, tol)");
- #raw("X = rgb2ind(RGB, map)");
- #raw("X = rgb2ind(RGB, map, dither_option)");

== Argument d'entrée

/ RGB: Image RGB, un tableau M-par-N-par-3 de classe uint8, uint16, single ou double.
/ n: Nombre de couleurs de la palette de sortie, un entier scalaire superieur ou egal a 1. Une quantification a variance minimale est utilisee.
/ tol: Tolerance dans l'intervalle (0, 1). Une quantification uniforme est utilisee et la palette contient les couleurs distinctes de la grille qui apparaissent.
/ map: Palette, un tableau M-par-3 de valeurs dans l'intervalle \[0, 1\]. Chaque pixel est associe a la couleur la plus proche de la palette.
/ dither\_option: 'dither' (defaut) applique la diffusion d'erreur de Floyd-Steinberg, 'nodither' associe chaque pixel a sa couleur la plus proche sans tramage.

== Argument de sortie

/ X: Image indexee avec des indices en base zero. La classe est uint8 lorsque la palette a 256 entrees ou moins, sinon uint16.
/ map: Palette, un tableau double a trois colonnes avec des valeurs dans l'intervalle \[0, 1\].

== Description

Convertit une image RGB en image indexee et sa palette associee. Lorsque le deuxieme argument est un entier scalaire, une quantification a variance minimale construit une palette d'au plus ce nombre de couleurs ; lorsque l'image a ce nombre de couleurs distinctes ou moins, le resultat est sans perte. Lorsque le deuxieme argument est un scalaire dans l'intervalle (0, 1), une quantification uniforme est utilisee. Lorsque le deuxieme argument est une palette M-par-3, chaque pixel est associe a la couleur la plus proche de la palette.

 Les indices de #strong[X]; sont en base zero, comme les images indexees produites a partir d'entrees entieres. Le tramage de Floyd-Steinberg est applique par defaut et peut etre desactive avec 'nodither'.


== Exemples

Quantifier une image RGB en 16 couleurs

``````matlab
R = uint8(255 * rand(32, 32, 3));
[X, map] = rgb2ind(R, 16, 'nodither');
size(map)
max(X(:))
``````

Associer une image RGB a une palette fixe

``````matlab
RGB = cat(3, [10 240; 250 0], [20 10; 250 0], [200 10; 250 0]);
RGB = uint8(RGB);
map = [0 0 0; 1 1 1; 1 0 0; 0 0 1];
X = rgb2ind(RGB, map, 'nodither')
``````


== Voir aussi

#nlink(<image_processing:1_image_basics.1_image_types_color.ind2rgb>)[ind2rgb];, #nlink(<image_processing:1_image_basics.1_image_types_color.ind2gray>)[ind2gray];, #nlink(<image_processing:1_image_basics.1_image_types_color.rgb2gray>)[rgb2gray];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
