#import "../../nelson_help.typ": *

= animatedline <graphics:1_plots.8_animation.animatedline>

Creer une ligne animee.

== Syntaxe

- #raw("an = animatedline()");
- #raw("an = animatedline(x, y)");
- #raw("an = animatedline(x, y, z)");
- #raw("an = animatedline(ax, ...)");
- #raw("an = animatedline(..., propertyName, propertyValue)");

== Argument d'entrée

/ x, y, z: coordonnees numeriques: scalaires ou tableaux avec le meme nombre d'elements.
/ ax: axes cible ou objet groupe.
/ propertyName: chaine scalaire ou vecteur de caracteres.
/ propertyValue: valeur de propriete.

== Argument de sortie

/ an: objet graphique de type animatedline.

== Description

#strong[animatedline]; cree une ligne animee sans point stocke.

 #strong[animatedline(x, y)]; cree une ligne animee initialisee avec des coordonnees deux dimensions.

 #strong[animatedline(x, y, z)]; cree une ligne animee initialisee avec des coordonnees trois dimensions.

 Utilisez #strong[addpoints];, #strong[clearpoints]; et #strong[getpoints]; pour modifier ou lire les coordonnees stockees.

 #strong[MaximumNumPoints]; limite le nombre de points stockes et conserve les points les plus recents.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.animatedline.properties>)[proprietes de animatedline]; pour la liste complete des proprietes.


== Exemple

``````matlab
f = figure();
ax = axes('Parent', f);
an = animatedline(ax, 'Color', [0 0.4 0.8], 'LineWidth', 2);
x = linspace(0, 2*pi, 120);
addpoints(an, x, sin(x));
drawnow
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.animatedline.properties>)[proprietes de animatedline];, #nlink(<graphics:1_plots.8_animation.addpoints>)[addpoints];, #nlink(<graphics:1_plots.8_animation.clearpoints>)[clearpoints];, #nlink(<graphics:1_plots.8_animation.getpoints>)[getpoints];, #nlink(<graphics:1_plots.8_animation.comet>)[comet];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
