#import "../../nelson_help.typ": *

= line <graphics:1_plots.1_line_plots.line>

Crée une ligne primitive.

== Syntaxe

- #raw("go = line()");
- #raw("po = line(x, y)");
- #raw("go = line(x, y, z)");
- #raw("go = line(ax, x, y, z)");
- #raw("go = line(ax, x, y, z, propertyName, propertyValue)");

== Argument d'entrée

/ x, y , z: Un ou plusieurs vecteurs ou matrices de coordonnées.
/ ax: Axes cibles : objet axes.
/ propertyName: Une chaîne scalaire ou un vecteur ligne de caractères.
/ propertyValue: Une valeur.

== Argument de sortie

/ go: Un objet graphique : type ligne.

== Description

#strong[line(x, y)]; crée une ligne dans les axes courants avec les vecteurs#strong[x]; et #strong[y];.

 #strong[line(x, y, z)]; crée une ligne en coordonnées tridimensionnelles.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[proprietes de line]; pour la liste complete des proprietes.

 #strong[BeingDeleted]; Indicateur signalant que l'objet est en cours de suppression.


== Exemples

``````matlab
f = figure();
x = linspace(0,10)';
y1 = sin(x);
y2 = cos(x);
line(x, y1, 'Color', [0 1 0])
line(x, y2, 'Color', [1 0 0])

``````


#align(center)[#image("line_xy.svg")]
``````matlab
f = figure();
x = [1 9];
y = [2 12];
line(x,y,'Color','red','LineStyle','--')
``````


#align(center)[#image("line_linestyle.svg")]
``````matlab
f = figure();
t = linspace(0,10*pi,400);
x = sin(t);
y = cos(t);
z = t;
line(x,y,z)
view(3)
``````


#align(center)[#image("line_xyz.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[proprietes de line];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:1_plots.1_line_plots.plot3>)[plot3];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.7.0], [Ajout des callbacks CreateFcn, DeleteFcn.],
  [--], [Ajout de la propriété BeingDeleted.],
  [--], [Ajout des proprietes polaires de ligne.],
)

// Auteur: Allan CORNET
