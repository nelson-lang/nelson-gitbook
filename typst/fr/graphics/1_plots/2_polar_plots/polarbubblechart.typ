#import "../../nelson_help.typ": *

= polarbubblechart <graphics:1_plots.2_polar_plots.polarbubblechart>

Affiche un graphique a bulles en coordonnees polaires.

== Syntaxe

- #raw("polarbubblechart(theta, rho, taille)");
- #raw("polarbubblechart(theta, rho, taille, couleur)");
- #raw("polarbubblechart(tbl, thetavar, rhovar, taillevar)");
- #raw("polarbubblechart(tbl, thetavar, rhovar, taillevar, couleurvar)");
- #raw("polarbubblechart(parent, ...)");
- #raw("h = polarbubblechart(...)");

== Description

#strong[polarbubblechart]; affiche des marqueurs polaires dont la taille depend des donnees de bulles.

 L'entree table selectionne les donnees d'angle, de rayon, de taille et de couleur optionnelle depuis les variables de #strong[tbl];. Plusieurs variables selectionnees creent plusieurs objets #strong[bubblechart];.


== Exemples

Creer un graphique a bulles polaire.

``````matlab
theta = linspace(0, 2*pi, 12);
rho = 1 + cos(theta).^2;
taille = 20 + 60 * abs(sin(theta));
polarbubblechart(theta, rho, taille, 'b');
``````


#align(center)[#image("polarbubblechart_1.svg")]
Creer un graphique a bulles polaire depuis une table.

``````matlab
t = table([0; pi/4; pi/2], [1; 2; 3], [25; 36; 49], [1; 2; 3], ...
  'VariableNames', {'theta', 'rho', 'sz', 'c'});
h = polarbubblechart(t, 'theta', 'rho', 'sz', 'c');
``````


#align(center)[#image("polarbubblechart_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart>)[bubblechart];, #nlink(<graphics:1_plots.2_polar_plots.polarscatter>)[polarscatter];.
