#import "../../nelson_help.typ": *

= getpoints <graphics:1_plots.8_animation.getpoints>

Retourner les points d'une ligne animee.

== Syntaxe

- #raw("[x, y] = getpoints(an)");
- #raw("[x, y, z] = getpoints(an)");

== Argument d'entrée

/ an: objet graphique animatedline.

== Argument de sortie

/ x, y, z: coordonnees stockees.

== Description

#strong[getpoints]; retourne uniquement les coordonnees stockees dans la ligne animee.

 Les lignes deux dimensions stockent et retournent des coordonnees z nulles lorsqu'une troisieme sortie est demandee.


== Exemple

``````matlab
an = animatedline(1:4, [1 4 2 3]);
[x, y, z] = getpoints(an)
``````


== Voir aussi

#nlink(<graphics:1_plots.8_animation.animatedline>)[animatedline];, #nlink(<graphics:1_plots.8_animation.addpoints>)[addpoints];, #nlink(<graphics:1_plots.8_animation.clearpoints>)[clearpoints];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
