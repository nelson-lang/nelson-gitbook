#import "../nelson_help.typ": *

= strlength <string:2_text_properties.strlength>

Longueur des chaînes dans un tableau ou une cellule de chaînes.

== Syntaxe

- #raw("len = strlength(ce)");

== Argument d'entrée

/ ce: une chaîne, un tableau de chaînes ou une cellule de chaînes.

== Argument de sortie

/ len: une matrice d'entiers : longueurs des chaînes.

== Description

#strong[strlength]; renvoie la longueur des chaînes.


== Exemple

``````matlab

str = 'To make a mountain out of a molehill';
k = strlength(str)

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
k = strlength(A)

B = ["Nel", NaN, "son"; "is", "open", "source"];
k = strlength(B)

``````


== Voir aussi

#nlink(<string:8_compare_text.strcmp>)[strcmp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
