#import "../../nelson_help.typ": *

= errorbar <graphics:1_plots.1_line_plots.errorbar>

Trace des donnees avec barres d'erreur.

== Syntaxe

- #raw("errorbar(Y, E)");
- #raw("errorbar(X, Y, E)");
- #raw("errorbar(X, Y, YNEG, YPOS)");
- #raw("errorbar(..., orientation)");
- #raw("errorbar(X, Y, YNEG, YPOS, XNEG, XPOS)");
- #raw("errorbar(..., lineSpec)");
- #raw("errorbar(..., propertyName, propertyValue)");
- #raw("errorbar(ax, ...)");
- #raw("h = errorbar(...)");

== Argument d'entrée

/ X: valeurs x.
/ Y: valeurs y.
/ E: erreurs y symetriques.
/ YNEG: erreurs y negatives.
/ YPOS: erreurs y positives.
/ XNEG: erreurs x negatives.
/ XPOS: erreurs x positives.
/ orientation: orientation des barres d'erreur : #strong['vertical'];, #strong['horizontal']; ou #strong['both'];.
/ lineSpec: specification de style, marqueur et couleur.
/ propertyName: nom d'une propriete de l'objet errorbar.
/ propertyValue: valeur d'une propriete de l'objet errorbar.
/ ax: objet axes cible.

== Argument de sortie

/ h: objet graphique errorbar ou vecteur ligne d'objets errorbar pour des donnees matricielles.

== Description

#strong[errorbar]; trace des donnees x et y avec des barres d'erreur verticales ou combinees x\/y.

 Les entrees vectorielles creent un objet errorbar. Les entrees matricielles creent un objet errorbar par colonne.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.errorbar.properties>)[proprietes de errorbar]; pour la liste complete des proprietes.


== Exemples

Tracer des barres d'erreur verticales de meme longueur.

``````matlab
x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
err = 8 * ones(size(y));
errorbar(x, y, err);

``````


#align(center)[#image("errorbar_1.svg")]
Tracer des barres d'erreur verticales de longueurs variables.

``````matlab
x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
err = [5 8 2 9 3 3 8 3 9 3];
errorbar(x, y, err);

``````


#align(center)[#image("errorbar_2.svg")]
Tracer des barres d'erreur horizontales.

``````matlab
x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
err = [1 3 5 3 5 3 6 4 3 3];
errorbar(x, y, err, 'horizontal');

``````


#align(center)[#image("errorbar_3.svg")]
Tracer des barres d'erreur verticales et horizontales avec marqueurs seuls.

``````matlab
x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
err = [4 3 5 3 5 3 6 4 3 3];
errorbar(x, y, err, 'both', 'o');

``````


#align(center)[#image("errorbar_4.svg")]
Controler les longueurs des barres dans toutes les directions.

``````matlab
x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
yneg = [1 3 5 3 5 3 6 4 3 3];
ypos = [2 5 3 5 2 5 2 2 5 5];
xneg = [1 3 5 3 5 3 6 4 3 3];
xpos = [2 5 3 5 2 5 2 2 5 5];
errorbar(x, y, yneg, ypos, xneg, xpos, 'o');

``````


#align(center)[#image("errorbar_5.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.errorbar.properties>)[proprietes de errorbar];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];.

// Auteur: Allan CORNET
