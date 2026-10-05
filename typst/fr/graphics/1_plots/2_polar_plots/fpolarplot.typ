#import "../../nelson_help.typ": *

= fpolarplot <graphics:1_plots.2_polar_plots.fpolarplot>

Trace une fonction en coordonnees polaires.

== Syntaxe

- #raw("fpolarplot(fun)");
- #raw("fpolarplot(fun, [tmin tmax])");
- #raw("fpolarplot(..., LineSpec)");
- #raw("fpolarplot(..., Nom, Valeur)");
- #raw("fpolarplot(parent, ...)");
- #raw("h = fpolarplot(...)");

== Argument de sortie

/ h: Objet graphique functionline trace dans des axes polaires.

== Description

#strong[fpolarplot]; echantillonne une fonction sur un intervalle d'angles et trace les rayons obtenus en coordonnees polaires. L'objet retourne est un #strong[functionline];.

 Les paires nom-valeur peuvent definir les proprietes de ligne et les proprietes de functionline comme #strong[MeshDensity];.


== Exemple

Tracer une fonction polaire.

``````matlab
fpolarplot(@(t) 1 + sin(4*t), [0 2*pi], 'r-');
``````


#align(center)[#image("fpolarplot_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot];, #nlink(<graphics:1_plots.1_line_plots.fplot>)[fplot];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionline.properties>)[proprietes de functionline];.
