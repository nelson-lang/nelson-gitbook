#import "../../nelson_help.typ": *

= stem <graphics:1_plots.6_discrete_data_plots.stem>

Tracer des données discrètes.

== Syntaxe

- #raw("stem(Y)");
- #raw("stem(X, Y)");
- #raw("stem(..., 'filled')");
- #raw("stem(..., LineSpec)");
- #raw("stem(..., propertyName, propertyValue)");
- #raw("stem(ax, ...)");
- #raw("go = stem(...)");

== Argument d'entrée

/ X: Emplacements pour tracer les valeurs de Y.
/ Y: Séquence de données à afficher.
/ LineSpec: Style de ligne, marqueur et\/ou couleur : vecteur de caractères ou chaîne scalaire.
/ propertyName: Une chaîne scalaire ou un vecteur ligne de caractères.
/ propertyValue: Une valeur.
/ ax: Objet axes.

== Argument de sortie

/ gr: Objet graphique stem ou vecteur d'objets graphiques stem.

== Description

Un graphique #strong[stem]; en deux dimensions permet de visualiser des données en les représentant par des lignes partant d'une ligne de base horizontale le long de l'axe x.

 À l'extrémité de chaque ligne se trouve un cercle (marqueur par défaut), et la position verticale de ce cercle correspond à la valeur de la donnée représentée.

 #strong[stem(Y)]; crée un graphique stem en prenant la séquence de données#strong[Y]; et en traçant des tiges partant de points régulièrement espacés et automatiquement déterminés le long de l'axe x.

 Si #strong[Y]; est une matrice, la fonction stem trace tous les éléments d'une ligne pour la même valeur de x.

 #strong[stem(X, Y)]; crée un graphique stem qui montre comment#strong[X]; est relié aux colonnes de #strong[Y];.

 #strong[X]; et#strong[Y]; peuvent être des vecteurs ou des matrices de même taille.

 #strong[X]; peut être un vecteur ligne ou colonne, et#strong[Y]; doit être une matrice ayant le même nombre de lignes que la longueur de #strong[X];.

 Si vous souhaitez spécifier si le cercle à l'extrémité de chaque tige doit être rempli, vous pouvez utiliser #strong[stem(...,'fill')];.

 De plus, en utilisant #strong[stem(..., LineSpec)];, vous pouvez définir le style de ligne, le symbole du marqueur et la couleur des tiges et du marqueur supérieur.

 Consultez #strong[LineSpec]; pour plus de détails sur la personnalisation de l'apparence du graphique stem.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.stem.properties>)[nelson.graphics.stem.properties]; pour les proprietes prises en charge de l'objet stem.


== Exemples

``````matlab
f = figure();
x = 1:10;
y = 2*x;
h = stem (x, y, 'MarkerFaceColor', [1 0 1]);
title('stem plot modified with property/value pair');
``````


#align(center)[#image("stem_1.svg")]
``````matlab
f =figure();
% Defining base line - X input vector ranging from 0 to 2*pi
X = 0 : pi/100 : 2*pi;
% Defining the Y input vector as function of X
Y = exp(-3*X/4) .* cos(2*X);
% Third, we use the 'stem' function to plot discrete values
stem(X,Y)
``````


#align(center)[#image("stem_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.stem.properties>)[nelson.graphics.stem.properties];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
