# fliplightness

Assombrir les couleurs claires et éclaircir les couleurs sombres.

## 📝 Syntaxe

- newcolors = fliplightness(colors)

## 📥 Argument d'entrée

- colors - couleurs à inverser : matrice m-par-3 de triplets RGB, tableau truecolor m-par-n-par-3, code couleur hexadécimal ('#FF8800' ou '#F80'), nom de couleur ('red', 'r', ...), tableau de cellules de vecteurs de caractères ou tableau de chaînes. Les valeurs numériques sont de type single ou double dans l'intervalle [0, 1], ou entières sur toute la plage de leur type entier.

## 📤 Argument de sortie

- newcolors - couleurs inversées, de même taille et de même type que colors. Les codes couleur hexadécimaux sont renvoyés sous forme de codes hexadécimaux ; les noms de couleur sont renvoyés sous forme de matrice m-par-3 de triplets RGB.

## 📄 Description

<b>fliplightness</b> assombrit les couleurs claires et éclaircit les couleurs sombres spécifiées dans <b>colors</b>, ce qui permet d'adapter un ensemble de couleurs à un fond sombre.

Chaque couleur est convertie dans l'espace colorimétrique Oklab et sa luminosité <b>L</b> est remplacée de sorte que <b>L^(3/2)</b> devienne <b>1 - L^(3/2)</b> : le noir devient blanc, le blanc devient noir. La teinte et la chroma sont conservées. Lorsque la nouvelle couleur sort de la gamme sRGB, sa chroma est réduite à la plus grande valeur dans la gamme, en conservant sa luminosité et sa teinte.

Appeler <b>fliplightness</b> deux fois peut ne pas redonner les couleurs d'origine, à cause de la réduction de chroma.

## 📚 Bibliographie

Bjorn Ottosson, A perceptual color space for image processing (Oklab), 2020.

## 💡 Exemples

Inverser des triplets RGB et des codes couleur hexadécimaux.

```matlab
newcolors = fliplightness([0 0 0; 1 1 1; 0.2 0.4 0.6])
newhex = fliplightness(["#FF8800", "#000000"])
newrgb = fliplightness(uint8([200 180 160]))

```

Carte de couleurs parula d'origine et inversée.

```matlab
C = parula(256);
f = figure();
image(cat(1, reshape(C, [1, 256, 3]), reshape(fliplightness(C), [1, 256, 3])));
axis off

```

## 🔗 Voir aussi

[validatecolor](../../../graphics/3_labels_styling/2_color_styling/validatecolor.md), [colororder](../../../graphics/3_labels_styling/2_color_styling/colororder.md), [theme](../../../graphics/3_labels_styling/2_color_styling/theme.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | Version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
