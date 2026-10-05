#import "../../nelson_help.typ": *

= ylabel <graphics:3_labels_styling.4_labels_annotations.ylabel>

Étiquette de l'axe des y.

== Syntaxe

- #raw("ylabel(text)");
- #raw("ylabel(ax, text)");
- #raw("ylabel(..., propertyName, propertyValue)");
- #raw("go = ylabel(...)");

== Argument d'entrée

/ text: Texte à afficher : vecteur de caractères, scalaire de chaîne, tableau de chaînes ou tableau de cellules.
/ ax: une valeur scalaire d'objet graphique : conteneur parent, spécifié comme un axes.
/ propertyName: une chaîne scalaire ou un vecteur de caractères en ligne.
/ propertyValue: une valeur.

== Argument de sortie

/ go: un objet graphique : type texte.

== Description

#strong[ylabel('text')]; étiquette l'axe des y des axes actuels.


== Exemple

``````matlab
f = figure();
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
ylabel('Étiquette de l’axe Y - Unicode ドラゴンボールY(ゼット)')
``````


#align(center)[#image("ylabel.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[text];, #nlink(<graphics:3_labels_styling.4_labels_annotations.title>)[title];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
