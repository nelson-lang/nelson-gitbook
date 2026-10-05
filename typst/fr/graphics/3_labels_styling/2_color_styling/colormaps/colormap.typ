#import "../../../nelson_help.typ": *

= colormap <graphics:3_labels_styling.2_color_styling.colormaps.colormap>

Afficher et définir la palette de couleurs courante.

== Syntaxe

- #raw("colormap(map)");
- #raw("colormap(target ,map)");
- #raw("cmap = colormap()");
- #raw("cmap = colormap(target)");

== Argument d'entrée

/ map: nom de la palette, 'default' ou triplets RGB (matrice).
/ target: Cible : figure ou axes.

== Argument de sortie

/ cmap: Valeurs de la palette : triplets RGB (matrice).

== Description

#strong[colormap]; permet d'afficher et de définir la palette de couleurs utilisée dans un graphique.


== Exemples

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

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.rgbplot>)[rgbplot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
