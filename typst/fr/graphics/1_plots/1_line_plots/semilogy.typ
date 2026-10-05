#import "../../nelson_help.typ": *

= semilogy <graphics:1_plots.1_line_plots.semilogy>

Graphique semi-logarithmique (axe y en échelle logarithmique).

== Syntaxe

- #raw("semilogy(X, Y)");
- #raw("semilogy(X, Y, LineSpec)");
- #raw("semilogy(Y)");
- #raw("semilogy(Y, LineSpec)");
- #raw("semilogy(ax, ...)");
- #raw("semilogy(..., propertyName, propertyValue)");
- #raw("go = semilogy(...)");

== Argument d'entrée

/ X: Coordonnées en échelle linéaire : scalaire, vecteur ou matrice.
/ Y: Coordonnées en échelle logarithmique : scalaire, vecteur ou matrice.
/ LineSpec: Style de ligne, marqueur et\/ou couleur : vecteur de caractères ou chaîne scalaire.
/ ax: Un objet graphique scalaire : conteneur parent, spécifié comme axes.
/ propertyName: Une chaine scalaire ou un vecteur ligne de caracteres. Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[proprietes de line]; pour la liste des proprietes.
/ propertyValue: Une valeur.

== Argument de sortie

/ go: Un objet graphique : type ligne.

== Description

#strong[semilogy(X, Y)]; trace des données en utilisant une échelle logarithmique en base 10 pour l'axe y et une échelle normale (linéaire) pour l'axe x.

 #strong[semilogy]; utilise exactement la même syntaxe que la commande #strong[plot];.


== Exemples

``````matlab
f = figure();
x = 1:100;
y1 = x.^2;
y2 = x.^3;
semilogy(x,y1,'--',x,y2)
legend('x^2','x^3','Location','northwest')
``````


#align(center)[#image("semilogy_1.svg")]
``````matlab
f = figure();
y = [ 0.1    1     10
      0.2    2     20
      1.0    10    100
      10     100   1000
      1000   10000 100000];

semilogy(y)
grid on
``````


#align(center)[#image("semilogy_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.semilogx>)[semilogx];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:3_labels_styling.1_axes_appearance.grid>)[grid];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
