#import "../../nelson_help.typ": *

= plot <graphics:1_plots.1_line_plots.plot>

Tracé linéaire 2D.

== Syntaxe

- #raw("plot(Y)");
- #raw("plot(X1, Y1, ...)");
- #raw("plot(X1, Y1, LineSpec, ...)");
- #raw("plot(..., propertyName, propertyValue, ...)");
- #raw("plot(ax, ...)");
- #raw("go = plot(...)");

== Argument d'entrée

/ X1: Coordonnées x : vecteur ou matrice.
/ Y1: Coordonnées y : vecteur ou matrice.
/ LineSpec: Style de ligne, marqueur et\/ou couleur : vecteur de caractères ou chaîne scalaire.
/ ax: Valeur scalaire d'objet graphique : conteneur parent, spécifié comme axes.
/ propertyName: Chaine scalaire ou vecteur ligne de caracteres. Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[proprietes de line]; pour la liste des proprietes.
/ propertyValue: Une valeur.

== Argument de sortie

/ go: Objet graphique : type ligne.

== Description

#strong[plot(Y)]; trace les colonnes de #strong[Y]; en fonction de leur indice.

 #strong[plot(X, Y)]; trace la courbe définie par la paire #strong[X]; et #strong[Y];.

 #strong[go \= plot(...)]; retourne un vecteur colonne d'objets graphiques de type ligne.

 

 #strong[LineSpec]; est une chaîne utilisée pour modifier les caractéristiques de la ligne et se compose de trois parties optionnelles dans n'importe quel ordre :

 

 Le SymbolSpec spécifie le symbole à dessiner à chaque point de données :

 

#table(
  columns: 2,
  [Symbole], [Description], 
  [#strong['o'];], [Symbole cercle], 
  [#strong['x'];], [Symbole croix], 
  [#strong['+'];], [Symbole plus], 
  [#strong['\*'];], [Symbole astérisque], 
  [#strong['.'];], [Symbole point], 
  [#strong['s'];], [Symbole carré], 
  [#strong['d'];], [Symbole losange], 
  [#strong['v'];], [Triangle pointe vers le bas], 
  [#strong['^'];], [Triangle pointe vers le haut], 
  [#strong[' \< '];], [Triangle pointe vers la droite], 
  [#strong[' \> '];], [Triangle pointe vers la gauche], 
)
 

 Le LineStyleSpec spécifie le style de ligne à utiliser pour chaque série de données :

 

#table(
  columns: 2,
  [Style], [Description], 
  [#strong['-'];], [Ligne continue], 
  [#strong['--'];], [Ligne pointillée], 
  [#strong['-.'];], [Ligne tiret-point], 
  [#strong[':'];], [Ligne en pointillés], 
)
 

 Le ColorSpec spécifie la couleur de ligne à utiliser pour chaque série de données :

 

#table(
  columns: 2,
  [Couleur], [Description], 
  [#strong['k'];], [Noir], 
  [#strong['y'];], [Jaune], 
  [#strong['m'];], [Magenta], 
  [#strong['c'];], [Cyan], 
  [#strong['r'];], [Rouge], 
  [#strong['b'];], [Bleu], 
  [#strong['g'];], [Vert], 
)
 

 Voir #strong[line]; pour plus d'informations sur les propriétés.


== Exemples

Abscisses par defaut avec les indices :

``````matlab
f = figure()
plot(sin(0:0.1:2*pi))
``````


#align(center)[#image("plot_y.svg")]
Utilisation d'abscisses explicites :

``````matlab
f = figure()
x = [0:0.1:2*pi]';
plot(x, sin(x))
``````


#align(center)[#image("plot_xy.svg")]
Plusieurs courbes avec abscisses partagees :

``````matlab
f = figure()
x = [0:0.1:2*pi]';
plot(x, [cos(x), cos(2*x), cos(3*x)])
``````


#align(center)[#image("plot_multiple.svg")]
Couleur et taille des marqueurs :

``````matlab
f = figure();
x = -pi:pi/10:pi;
y = tan(sin(x)) - sin(tan(x));
plot(x ,y, '--rs', LineWidth=2, MarkerEdgeColor='k', MarkerFaceColor='g', MarkerSize=11)
``````


#align(center)[#image("plot_markers.svg")]
Ajout d'un titre et d'etiquettes d'axes :

``````matlab
f = figure();
x = linspace(0, 10, 150);
y = sin(5*x);
plot(x,y,'Color',[0,0.7,0.9])
title('2-D Line Plot')
xlabel('x')
ylabel('sin(5x)')
``````


#align(center)[#image("plot_title.svg")]

== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot3>)[plot3];, #nlink(<interpreter:name_value_syntax>)[name\=value syntax];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
