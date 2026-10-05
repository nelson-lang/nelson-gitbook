#import "../../nelson_help.typ": *

= stem3 <graphics:1_plots.6_discrete_data_plots.stem3>

Afficher un trace en tiges 3-D.

== Syntaxe

- #raw("stem3(Z)");
- #raw("stem3(X, Y, Z)");
- #raw("stem3(..., LineSpec)");
- #raw("stem3(..., 'filled')");
- #raw("stem3(parent, ...)");
- #raw("h = stem3(...)");

== Argument d'entrée

/ Z: Hauteurs des tiges : vecteur ou matrice numerique.
/ X: Coordonnees X : vecteur ou matrice numerique.
/ Y: Coordonnees Y : vecteur ou matrice numerique.
/ LineSpec: Specification de style de ligne, marqueur et couleur.
/ parent: Axes ou hggroup parent.

== Argument de sortie

/ h: Objet graphique stem.

== Description

#strong[stem3]; affiche des tiges verticales de z \= 0 aux valeurs de #strong[Z];, avec des marqueurs aux sommets.

 L'objet retourne est un objet graphique #strong[stem];. Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.stem.properties>)[nelson.graphics.stem.properties]; pour les proprietes prises en charge.


== Exemples

Afficher un trace en tiges 3-D depuis une matrice.

``````matlab
Z = peaks(8);
stem3(Z);
``````


#align(center)[#image("stem3_1.svg")]
Specifier les coordonnees et remplir les marqueurs.

``````matlab
t = 0:0.2:2*pi;
stem3(cos(t), sin(t), t, 'r--', 'filled');
``````


#align(center)[#image("stem3_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.6_discrete_data_plots.stem>)[stem];, #nlink(<graphics:1_plots.1_line_plots.plot3>)[plot3];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.stem.properties>)[nelson.graphics.stem.properties];.
