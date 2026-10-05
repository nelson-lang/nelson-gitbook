#import "../../nelson_help.typ": *

= clearpoints <graphics:1_plots.8_animation.clearpoints>

Effacer les points d'une ligne animee.

== Syntaxe

- #raw("clearpoints(an)");

== Argument d'entrée

/ an: objet graphique animatedline.

== Description

#strong[clearpoints]; supprime toutes les coordonnees stockees dans une ligne animee et rafraichit la figure parente.


== Exemple

``````matlab
an = animatedline(1:5, [2 4 1 3 5]);
clearpoints(an);
[x, y] = getpoints(an)
``````


== Voir aussi

#nlink(<graphics:1_plots.8_animation.animatedline>)[animatedline];, #nlink(<graphics:1_plots.8_animation.addpoints>)[addpoints];, #nlink(<graphics:1_plots.8_animation.getpoints>)[getpoints];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
