#import "../../nelson_help.typ": *

= loglog <graphics:1_plots.1_line_plots.loglog>

Tracé en échelle log-log.

== Syntaxe

- #raw("loglog(X, Y)");
- #raw("loglog(X, Y, LineSpec)");
- #raw("loglog(Y)");
- #raw("loglog(Y, LineSpec)");
- #raw("loglog(ax, ...)");
- #raw("loglog(..., propertyName, propertyValue)");
- #raw("go = loglog(...)");

== Argument d'entrée

/ X: Coordonnées en échelle logarithmique : scalaire, vecteur ou matrice.
/ Y: Coordonnées en échelle logarithmique : scalaire, vecteur ou matrice.
/ LineSpec: Style de ligne, marqueur et\/ou couleur : vecteur de caractères ou chaîne scalaire.
/ ax: Un objet graphique scalaire : conteneur parent, spécifié comme axes.
/ propertyName: Une chaine scalaire ou un vecteur ligne de caracteres. Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[proprietes de line]; pour la liste des proprietes.
/ propertyValue: Une valeur.

== Argument de sortie

/ go: Un objet graphique : type ligne.

== Description

#strong[loglog(X, Y)]; trace les données en utilisant une échelle logarithmique en base 10 pour l'axe des x et l'axe des y.

 #strong[loglog]; utilise exactement la même syntaxe que la commande #strong[plot];.


== Exemples

``````matlab
f = figure();
x = logspace(-1,2);
y = 2 .^ x;
loglog(x,y)
grid on
``````


#align(center)[#image("loglog_1.svg")]
``````matlab
f = figure();
x = logspace(-1,2,20);
y = 10 .^ x;
loglog(x,y,'s','MarkerFaceColor',[0 0.447 0.741])
grid on
``````


#align(center)[#image("loglog_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.semilogx>)[semilogx];, #nlink(<graphics:1_plots.1_line_plots.semilogy>)[semilogy];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:3_labels_styling.1_axes_appearance.grid>)[grid];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
