#import "../../nelson_help.typ": *

= fliplightness <graphics:3_labels_styling.2_color_styling.fliplightness>

Assombrir les couleurs claires et éclaircir les couleurs sombres.

== Syntaxe

- #raw("newcolors = fliplightness(colors)");

== Argument d'entrée

/ colors: couleurs à inverser : matrice m-par-3 de triplets RGB, tableau truecolor m-par-n-par-3, code couleur hexadécimal ('\#FF8800' ou '\#F80'), nom de couleur ('red', 'r', ...), tableau de cellules de vecteurs de caractères ou tableau de chaînes. Les valeurs numériques sont de type single ou double dans l'intervalle \[0, 1\], ou entières sur toute la plage de leur type entier.

== Argument de sortie

/ newcolors: couleurs inversées, de même taille et de même type que colors. Les codes couleur hexadécimaux sont renvoyés sous forme de codes hexadécimaux ; les noms de couleur sont renvoyés sous forme de matrice m-par-3 de triplets RGB.

== Description

#strong[fliplightness]; assombrit les couleurs claires et éclaircit les couleurs sombres spécifiées dans #strong[colors];, ce qui permet d'adapter un ensemble de couleurs à un fond sombre.

 Chaque couleur est convertie dans l'espace colorimétrique Oklab et sa luminosité #strong[L]; est remplacée de sorte que #strong[L^(3\/2)]; devienne #strong[1 - L^(3\/2)]; : le noir devient blanc, le blanc devient noir. La teinte et la chroma sont conservées. Lorsque la nouvelle couleur sort de la gamme sRGB, sa chroma est réduite à la plus grande valeur dans la gamme, en conservant sa luminosité et sa teinte.

 Appeler #strong[fliplightness]; deux fois peut ne pas redonner les couleurs d'origine, à cause de la réduction de chroma.


== Bibliographie

Bjorn Ottosson, A perceptual color space for image processing (Oklab), 2020.

== Exemples

Inverser des triplets RGB et des codes couleur hexadécimaux.

``````matlab
newcolors = fliplightness([0 0 0; 1 1 1; 0.2 0.4 0.6])
newhex = fliplightness(["#FF8800", "#000000"])
newrgb = fliplightness(uint8([200 180 160]))

``````

Carte de couleurs parula d'origine et inversée.

``````matlab
C = parula(256);
f = figure();
image(cat(1, reshape(C, [1, 256, 3]), reshape(fliplightness(C), [1, 256, 3])));
axis off

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.validatecolor>)[validatecolor];, #nlink(<graphics:3_labels_styling.2_color_styling.colororder>)[colororder];, #nlink(<graphics:3_labels_styling.2_color_styling.theme>)[theme];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale],
)

// Auteur: Allan CORNET
