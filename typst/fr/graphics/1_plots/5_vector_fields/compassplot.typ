#import "../../nelson_help.typ": *

= compassplot <graphics:1_plots.5_vector_fields.compassplot>

Affiche des vecteurs depuis l'origine en coordonnees polaires.

== Syntaxe

- #raw("compassplot(z)");
- #raw("compassplot(theta, r)");
- #raw("compassplot(parent, ...)");
- #raw("h = compassplot(...)");

== Description

#strong[compassplot]; affiche des valeurs complexes ou des paires de coordonnees polaires sous forme de fleches partant de l'origine. Le handle retourne est un objet #strong[compassplot];.

 La page #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.compassplot.properties>)[proprietes de compassplot]; liste les proprietes d'objet prises en charge.


== Exemple

Afficher des vecteurs complexes.

``````matlab
z = [1 + 1i, 1 - 1i, -1 + 0.5i];
compassplot(z);
``````


#align(center)[#image("compassplot_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.compassplot.properties>)[proprietes de compassplot];, #nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver];.
