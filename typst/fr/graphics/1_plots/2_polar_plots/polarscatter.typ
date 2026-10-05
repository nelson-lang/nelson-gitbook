#import "../../nelson_help.typ": *

= polarscatter <graphics:1_plots.2_polar_plots.polarscatter>

Affiche des points en coordonnees polaires.

== Syntaxe

- #raw("polarscatter(theta, rho)");
- #raw("polarscatter(theta, rho, taille)");
- #raw("polarscatter(theta, rho, taille, couleur)");
- #raw("polarscatter(tbl, thetavar, rhovar)");
- #raw("polarscatter(parent, ...)");
- #raw("h = polarscatter(...)");

== Description

#strong[polarscatter]; affiche des marqueurs a partir de valeurs d'angle et de rayon.

 L'entree table selectionne les donnees d'angle et de rayon depuis les variables de #strong[tbl];. Plusieurs variables selectionnees creent plusieurs objets #strong[scatter];.


== Exemples

Afficher des marqueurs polaires remplis.

``````matlab
theta = linspace(0, 2*pi, 24);
rho = 1 + sin(3 * theta);
polarscatter(theta, rho, 49, 'r', 'filled');
``````


#align(center)[#image("polarscatter_1.svg")]
Creer un nuage polaire depuis une table.

``````matlab
t = table([0; pi/4; pi/2], [1; 2; 3], 'VariableNames', {'theta', 'rho'});
h = polarscatter(t, 'theta', 'rho', 'filled');
``````


#align(center)[#image("polarscatter_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot];, #nlink(<graphics:1_plots.2_polar_plots.polarbubblechart>)[polarbubblechart];.
