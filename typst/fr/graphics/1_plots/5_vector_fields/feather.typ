#import "../../nelson_help.typ": *

= feather <graphics:1_plots.5_vector_fields.feather>

Afficher des vecteurs depuis une ligne de base.

== Syntaxe

- #raw("feather(Z)");
- #raw("feather(U, V)");
- #raw("feather(..., LineSpec)");
- #raw("feather(..., nomPropriete, valeurPropriete)");
- #raw("feather(parent, ...)");
- #raw("h = feather(...)");

== Description

#strong[feather]; affiche des vecteurs 2-D depuis y \= 0. Une entree complexe utilise la partie reelle comme composante horizontale et la partie imaginaire comme composante verticale.

 La sortie est un vecteur colonne d'objets graphiques #strong[line];: une ligne par fleche et une ligne pour la base.


== Exemples

Afficher des vecteurs depuis des valeurs complexes.

``````matlab
z = [1 + 2i, 2 - 1i, -1 + 1i];
feather(z);
``````


#align(center)[#image("feather_1.svg")]
Utiliser un style de ligne et des proprietes de ligne.

``````matlab
u = [1 3 2];
v = [2 1 -1];
h = feather(u, v, '-or', 'LineWidth', 1.5);
``````


#align(center)[#image("feather_2.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[proprietes de line];, #nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver];, #nlink(<graphics:1_plots.5_vector_fields.compassplot>)[compassplot];.
