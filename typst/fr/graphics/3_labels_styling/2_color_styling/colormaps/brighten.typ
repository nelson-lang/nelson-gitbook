#import "../../../nelson_help.typ": *

= brighten <graphics:3_labels_styling.2_color_styling.colormaps.brighten>

Éclaircit ou assombrit une palette de couleurs.

== Syntaxe

- #raw("brighten(beta)");
- #raw("brighten(ax, beta)");
- #raw("newmap = brighten(beta)");
- #raw("newmap = brighten(map, beta)");

== Argument d'entrée

/ beta: Scalaire dans l'intervalle (-1, 1). Positif éclaircit, négatif assombrit.
/ map: Palette de couleurs, matrice M-par-3 de valeurs RVB dans \[0, 1\].
/ ax: Axes ou figure cible dont la palette est modifiée.

== Argument de sortie

/ newmap: Palette éclaircie.

== Description

#strong[brighten]; augmente (#strong[beta]; \> 0) ou diminue (#strong[beta]; \< 0) la luminosité d'une palette de couleurs. Sans argument de sortie, elle remplace la palette de la figure courante (ou de #strong[ax];) ; avec un argument de sortie, elle renvoie la palette modifiée. Lorsque #strong[beta]; tend vers 1 les couleurs tendent vers le blanc, et vers -1 vers le noir.


== Fonction(s) utilisée(s)

colormap

== Exemple

``````matlab
f = figure();
surf(peaks());
colormap(jet());
brighten(0.5);
``````


== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
