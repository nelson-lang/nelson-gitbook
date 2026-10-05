#import "../../../nelson_help.typ": *

= colormap <graphics:3_labels_styling.2_color_styling.colormaps.colormap>

View and set current colormap.

== Syntax

- #raw("colormap(map)");
- #raw("colormap(target ,map)");
- #raw("cmap = colormap()");
- #raw("cmap = colormap(target)");

== Input argument

/ map: colormap name, 'default' or RGB triplets (matrix).
/ target: Target: figure or axes.

== Output argument

/ cmap: Colormap values: RGB triplets (matrix).

== Description

#strong[colormap]; allows to view and set the colormap used into a plot.


== Examples

``````matlab
f = figure()
x = linspace(-1, 1, 1024)' * ones(1, 1024);
y = x';
Z = exp(-(x .^ 2 + y .^ 2) / 0.4);
imagesc(Z);
colormap('summer')

``````


#align(center)[#image("colormap_1.svg")]
``````matlab
f = figure()
x = linspace(-1, 1, 1024)' * ones(1, 1024);
y = x';
Z = exp(-(x .^ 2 + y .^ 2) / 0.4);
imagesc(Z);
colormap('gray')
``````


#align(center)[#image("colormap_2.svg")]
``````matlab
f = figure()
x = linspace(-1, 1, 1024)' * ones(1, 1024);
y = x';
Z = exp(-(x .^ 2 + y .^ 2) / 0.4);
imagesc(Z);

map = [0 0 0.3;
    0 0 0.4;
    0 0 0.5;
    0 0 0.6;
    0 0 0.8;
    0 0 1.0];
colormap(map)
``````


#align(center)[#image("colormap_3.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.rgbplot>)[rgbplot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
