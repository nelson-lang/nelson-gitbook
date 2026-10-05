#import "../../nelson_help.typ": *

= title <graphics:3_labels_styling.4_labels_annotations.title>

Ajouter un titre.

== Syntaxe

- #raw("title(text)");
- #raw("title(ax, text)");
- #raw("title(..., propertyName, propertyValue)");
- #raw("go = title(...)");

== Argument d'entrée

/ text: Texte à afficher : vecteur de caractères, chaîne scalaire, tableau de chaînes ou tableau de cellules.
/ ax: Un objet graphique scalaire : conteneur parent, spécifié comme axes.
/ propertyName: Une chaîne scalaire ou un vecteur ligne de caractères.
/ propertyValue: Une valeur.

== Argument de sortie

/ go: Un objet graphique : type texte.

== Description

#strong[title('text')]; ajoute un titre aux axes actuels.

 La propriété#strong[Visible]; est héritée du parent si elle n'est pas explicitement définie.


== Exemple

``````matlab
f = figure();
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
title('Unicode ドラゴンボールZ(ゼット)', 'FontSize', 14);
``````


#align(center)[#image("title.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[texte];, #nlink(<graphics:3_labels_styling.4_labels_annotations.xlabel>)[xlabel];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [Version initiale],
  [1.10.0], [La propriété Visible est héritée du parent si elle n'est pas explicitement définie.],
)

// Auteur: Allan CORNET
