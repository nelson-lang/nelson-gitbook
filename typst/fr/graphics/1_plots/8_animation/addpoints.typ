#import "../../nelson_help.typ": *

= addpoints <graphics:1_plots.8_animation.addpoints>

Ajouter des points a une ligne animee.

== Syntaxe

- #raw("addpoints(an, x, y)");
- #raw("addpoints(an, x, y, z)");

== Argument d'entrée

/ an: objet graphique animatedline.
/ x, y, z: coordonnees numeriques avec le meme nombre d'elements.

== Description

#strong[addpoints]; ajoute des coordonnees a une ligne animee et rafraichit la figure parente.

 Si #strong[z]; est omis, des coordonnees z nulles sont stockees.

 La propriete #strong[MaximumNumPoints]; limite les coordonnees stockees et conserve les points les plus recents.


== Exemple

``````matlab
an = animatedline('MaximumNumPoints', 50);
x = linspace(0, 4*pi, 200);
addpoints(an, x, sin(x));
drawnow
``````


== Voir aussi

#nlink(<graphics:1_plots.8_animation.animatedline>)[animatedline];, #nlink(<graphics:1_plots.8_animation.clearpoints>)[clearpoints];, #nlink(<graphics:1_plots.8_animation.getpoints>)[getpoints];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
