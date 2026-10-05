#import "../../nelson_help.typ": *

= ytickangle <graphics:3_labels_styling.1_axes_appearance.ytickangle>

Faire pivoter les etiquettes de l'axe des y.

== Syntaxe

- #raw("ytickangle(angle)");
- #raw("angle = ytickangle()");
- #raw("ytickangle(ax, ...)");

== Argument d'entrée

/ angle: Angle de rotation en degres, specifie sous la forme d'un scalaire numerique.
/ ax: Axes cibles. Par defaut, les axes courants.

== Argument de sortie

/ angle: Angle de rotation courant en degres.

== Description

#strong[ytickangle]; fait pivoter les etiquettes de l'axe des y des axes courants de l'angle indique.

 Un angle positif fait pivoter les etiquettes dans le sens anti-horaire ; un angle negatif dans le sens horaire.


== Exemple

Faire pivoter les etiquettes de l'axe des y de 45 degres.

``````matlab

x = linspace(0, 10, 50);
plot(x, 1000 * sin(x));
ytickangle(45);

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.1_axes_appearance.yticks>)[yticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.yticklabels>)[yticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickangle>)[xtickangle];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
