#import "../../nelson_help.typ": *

= clim <graphics:3_labels_styling.2_color_styling.clim>

Définit les limites de la palette de couleurs.

== Syntaxe

- #raw("clim(limits)");
- #raw("clim('auto')");
- #raw("clim('manual')");
- #raw("clim(ax, ...)");
- #raw("lims = clim()");

== Argument d'entrée

/ limits: Nouvelles limites : \[cmin cmax\].
/ 'auto': active la mise à jour automatique des limites lorsque les valeurs du tableau d'indexation de la palette changent.
/ 'manual': désactive la mise à jour automatique des limites.
/ ax: Objet cible : objet axes graphique.

== Argument de sortie

/ lims: \[cmin cmax\]

== Description

#strong[clim]; définit ou récupère les limites de la palette de couleurs.


== Exemples

``````matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = X .^ 2 + Y .^ 2;
surf(Z);
limits = clim()

``````


#align(center)[#image("clim_1.svg")]
``````matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = X.^2 + Y.^2;
surf(Z);
clim([25 75])
limits = clim()

``````


#align(center)[#image("clim_2.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];, #nlink(<graphics:3_labels_styling.4_labels_annotations.colorbar>)[colorbar];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
