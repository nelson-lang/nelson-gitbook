#import "../../nelson_help.typ": *

= ztickangle <graphics:3_labels_styling.1_axes_appearance.ztickangle>

Faire pivoter les etiquettes de l'axe des z.

== Syntaxe

- #raw("ztickangle(angle)");
- #raw("angle = ztickangle()");
- #raw("ztickangle(ax, ...)");

== Argument d'entrée

/ angle: Angle de rotation en degres, specifie sous la forme d'un scalaire numerique.
/ ax: Axes cibles. Par defaut, les axes courants.

== Argument de sortie

/ angle: Angle de rotation courant en degres.

== Description

#strong[ztickangle]; fait pivoter les etiquettes de l'axe des z des axes courants de l'angle indique.

 Un angle positif fait pivoter les etiquettes dans le sens anti-horaire ; un angle negatif dans le sens horaire.


== Exemple

Faire pivoter les etiquettes de l'axe des z de 45 degres.

``````matlab

t = linspace(0, 10, 50);
plot3(sin(t), cos(t), t);
ztickangle(45);

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.1_axes_appearance.zticks>)[zticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.zticklabels>)[zticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickangle>)[xtickangle];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
