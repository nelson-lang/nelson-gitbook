#import "../../nelson_help.typ": *

= zlabel <graphics:3_labels_styling.4_labels_annotations.zlabel>

Étiquette de l'axe des z.

== Syntaxe

- #raw("zlabel(text)");
- #raw("zlabel(ax, text)");
- #raw("zlabel(..., propertyName, propertyValue)");
- #raw("go = zlabel(...)");

== Argument d'entrée

/ text: Texte à afficher : vecteur de caractères, scalaire de chaîne, tableau de chaînes ou tableau de cellules.
/ ax: une valeur scalaire d'objet graphique : conteneur parent, spécifié comme un axes.
/ propertyName: une chaîne scalaire ou un vecteur de caractères en ligne.
/ propertyValue: une valeur.

== Argument de sortie

/ go: un objet graphique : type texte.

== Description

#strong[zlabel('text')]; étiquette l'axe des z des axes actuels.


== Exemple

``````matlab
f  = figure();
t = 0:pi/50:10*pi;
L = plot3(sin(t), cos(t), t);
axis square
zlabel('Étiquette de l’axe Z - Unicode ドラゴンボールZ(ゼット)')
``````


#align(center)[#image("zlabel.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[text];, #nlink(<graphics:3_labels_styling.4_labels_annotations.title>)[title];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
