#import "../../nelson_help.typ": *

= semilogx <graphics:1_plots.1_line_plots.semilogx>

Graphique semi-logarithmique (axe x en échelle logarithmique).

== Syntaxe

- #raw("semilogx(X, Y)");
- #raw("semilogx(X, Y, LineSpec)");
- #raw("semilogx(Y)");
- #raw("semilogx(Y, LineSpec)");
- #raw("semilogx(ax, ...)");
- #raw("semilogx(..., propertyName, propertyValue)");
- #raw("go = semilogx(...)");

== Argument d'entrée

/ X: Coordonnées en échelle logarithmique : scalaire, vecteur ou matrice.
/ Y: Coordonnées en échelle linéaire : scalaire, vecteur ou matrice.
/ LineSpec: Style de ligne, marqueur et\/ou couleur : vecteur de caractères ou chaîne scalaire.
/ ax: Un objet graphique scalaire : conteneur parent, spécifié comme axes.
/ propertyName: Une chaine scalaire ou un vecteur ligne de caracteres. Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[proprietes de line]; pour la liste des proprietes.
/ propertyValue: Une valeur.

== Argument de sortie

/ go: Un objet graphique : type ligne.

== Description

#strong[semilogx(X, Y)]; trace des données en utilisant une échelle logarithmique en base 10 pour l'axe x et une échelle normale (linéaire) pour l'axe y.

 #strong[semilogx]; utilise exactement la même syntaxe que la commande #strong[plot];.


== Exemples

``````matlab
f = figure();
x = logspace(-1,2);
semilogx(x, x);
grid on
``````


#align(center)[#image("semilogx_1.svg")]
``````matlab
f = figure();
x = logspace(-1, 2, 15);
y = 13 + x;
semilogx(x, y, 'x', 'MarkerFaceColor', [0 0.447 0.741])
grid on
``````


#align(center)[#image("semilogx_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.semilogy>)[semilogy];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:3_labels_styling.1_axes_appearance.grid>)[grid];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
