#import "../../nelson_help.typ": *

= fliplightness <graphics:3_labels_styling.2_color_styling.fliplightness>

Darken light colors and lighten dark colors.

== Syntax

- #raw("newcolors = fliplightness(colors)");

== Input argument

/ colors: colors to flip: m-by-3 matrix of RGB triplets, m-by-n-by-3 truecolor array, hexadecimal color code ('\#FF8800' or '\#F80'), color name ('red', 'r', ...), cell array of character vectors or string array. Numeric values are single or double in the range \[0, 1\], or integers spanning the whole range of their integer type.

== Output argument

/ newcolors: flipped colors, with the same size and type as colors. Hexadecimal color codes are returned as hexadecimal color codes; color names are returned as an m-by-3 matrix of RGB triplets.

== Description

#strong[fliplightness]; darkens the light colors and lightens the dark colors specified in #strong[colors];, which is useful to adapt a set of colors to a dark background.

 Each color is converted to the Oklab color space and its lightness #strong[L]; is replaced so that #strong[L^(3\/2)]; becomes #strong[1 - L^(3\/2)];: black becomes white, white becomes black. Hue and chroma are kept. When the new color falls outside the sRGB gamut, its chroma is reduced to the largest value inside the gamut, keeping its lightness and hue.

 Calling #strong[fliplightness]; twice may not return the original colors, because of the chroma reduction.


== Bibliography

Bjorn Ottosson, A perceptual color space for image processing (Oklab), 2020.

== Examples

Flip RGB triplets and hexadecimal color codes.

``````matlab
newcolors = fliplightness([0 0 0; 1 1 1; 0.2 0.4 0.6])
newhex = fliplightness(["#FF8800", "#000000"])
newrgb = fliplightness(uint8([200 180 160]))

``````

Original and flipped parula colormap.

``````matlab
C = parula(256);
f = figure();
image(cat(1, reshape(C, [1, 256, 3]), reshape(fliplightness(C), [1, 256, 3])));
axis off

``````


== See also

#nlink(<graphics:3_labels_styling.2_color_styling.validatecolor>)[validatecolor];, #nlink(<graphics:3_labels_styling.2_color_styling.colororder>)[colororder];, #nlink(<graphics:3_labels_styling.2_color_styling.theme>)[theme];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
