#import "../../nelson_help.typ": *

= polarplot <graphics:1_plots.2_polar_plots.polarplot>

Trace des donnees en coordonnees polaires.

== Syntaxe

- #raw("polarplot(rho)");
- #raw("polarplot(theta, rho)");
- #raw("polarplot(theta, rho, LineSpec)");
- #raw("polarplot(..., propertyName, propertyValue, ...)");
- #raw("polarplot(ax, ...)");
- #raw("go = polarplot(...)");

== Argument d'entrée

/ theta: Angles en radians : vecteur ou matrice.
/ rho: Coordonnees radiales : vecteur ou matrice numerique reel.
/ LineSpec: Style de ligne, marqueur et\/ou couleur : vecteur de caracteres ou chaine scalaire.
/ propertyName: Nom de propriete de ligne : chaine scalaire ou vecteur ligne de caracteres.
/ propertyValue: Valeur affectee a la propriete de ligne precedente.
/ ax: Axes polaires cible ou objet axes. Un axes classique est initialise comme axes polaire.

== Argument de sortie

/ go: Vecteur colonne d'objets graphiques de type ligne.

== Description

#strong[polarplot(theta, rho)]; trace les valeurs de rayon #strong[rho]; aux angles #strong[theta];. Les angles de donnees sont exprimes en radians.

 #strong[polarplot(rho)]; trace #strong[rho]; avec des angles regulierement espaces de 0 a 2\*pi. Si #strong[rho]; est complexe, #strong[angle(rho)]; est utilise pour les angles et #strong[abs(rho)]; pour les rayons.

 Si #strong[rho]; est une matrice, chaque colonne est tracee comme une ligne separee. Un vecteur #strong[theta]; peut etre combine avec une matrice #strong[rho]; quand sa longueur correspond a une dimension de #strong[rho];.

 Les objets ligne retournes conservent les echantillons polaires dans leurs proprietes #strong[ThetaData]; et #strong[RData];. Les donnees cartesiennes #strong[XData]; et #strong[YData]; sont gerees par le rendu polaire.

 Les fonctions de limites et de graduations angulaires utilisent les degres : #strong[thetalim];, #strong[thetaticks]; et #strong[thetaticklabels];.

 Quand aucun axes polaire n'est courant, #strong[polarplot]; en cree un. Si un axes classique est fourni, il est initialise comme axes polaire.


== Exemples

Tracer une courbe polaire avec une specification de ligne.

``````matlab

theta = linspace(0, 2*pi, 200);
rho = 1 + 0.5*cos(4*theta);
polarplot(theta, rho, 'r-', 'LineWidth', 2);

``````


#align(center)[#image("polarplot_1.svg")]
Tracer plusieurs colonnes de rayons sur le meme axes polaire.

``````matlab

theta = linspace(0, 2*pi, 100)';
rho = [sin(theta).^2, cos(theta).^2];
go = polarplot(theta, rho);
rticks([0 0.5 1]);
thetaticks(0:45:360);

``````

Utiliser un axes polaire explicite.

``````matlab

f = figure();
ax = polaraxes('Parent', f);
polarplot(ax, linspace(0, pi, 50), linspace(0, 2, 50), 'o-');
rlim(ax, [0 2]);
thetalim(ax, [0 180]);

``````


== Voir aussi

#nlink(<graphics:1_plots.2_polar_plots.polaraxes>)[polaraxes];, #nlink(<graphics:3_labels_styling.1_axes_appearance.rlim>)[rlim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.rticks>)[rticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.thetalim>)[thetalim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.thetaticks>)[thetaticks];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
