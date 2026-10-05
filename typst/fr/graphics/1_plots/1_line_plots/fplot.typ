#import "../../nelson_help.typ": *

= fplot <graphics:1_plots.1_line_plots.fplot>

Trace une expression ou une fonction parametrique.

== Syntaxe

- #raw("fplot(f)");
- #raw("fplot(f, [xmin xmax])");
- #raw("fplot(xfun, yfun)");
- #raw("fplot(xfun, yfun, [tmin tmax])");
- #raw("fplot(..., lineSpec)");
- #raw("fplot(..., propertyName, propertyValue)");
- #raw("fplot(ax, ...)");
- #raw("h = fplot(...)");

== Argument d'entrée

/ f: fonction evaluee sur les valeurs x.
/ xfun: fonction evaluee sur le parametre pour produire les donnees x.
/ yfun: fonction evaluee sur le parametre pour produire les donnees y.
/ lineSpec: specification de style, marqueur et couleur.
/ propertyName: nom d'une #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[propriete de line];.
/ propertyValue: valeur d'une propriete de l'objet line.
/ ax: objet axes cible.

== Argument de sortie

/ h: objet graphique #strong[functionline]; pour y \= f(x), ou objet graphique #strong[parameterizedfunctionline]; pour x \= x(t), y \= y(t).

== Description

#strong[fplot]; echantillonne des fonctions sur un intervalle fini et trace le resultat comme un objet graphique de fonction. L'intervalle par defaut est \[-5 5\].

 Pour y \= f(x), #strong[fplot]; retourne un objet #strong[functionline];. Pour les courbes parametriques, il retourne un objet #strong[parameterizedfunctionline];.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionline.properties>)[proprietes de functionline]; et #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.parameterizedfunctionline.properties>)[proprietes de parameterizedfunctionline]; pour les listes completes des proprietes.


== Exemples

``````matlab
fplot(@(x) sin(x), [0 2*pi]);

``````


#align(center)[#image("fplot_1.svg")]
``````matlab
fplot(@(x) exp(-x.^2), [-3 3], '-r', 'LineWidth', 1.5);

``````


#align(center)[#image("fplot_2.svg")]
``````matlab
fplot(@(t) cos(t), @(t) sin(t), [0 2*pi]);
axis equal

``````


#align(center)[#image("fplot_3.svg")]

== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionline.properties>)[proprietes de functionline];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.parameterizedfunctionline.properties>)[proprietes de parameterizedfunctionline];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fsurf>)[fsurf];.

// Auteur: Allan CORNET
