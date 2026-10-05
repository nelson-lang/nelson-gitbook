#import "../nelson_help.typ": *

= blanks <string:1_create_convert_text.blanks>

crée une chaîne de caractères d'espaces.

== Syntaxe

- #raw("r = blanks(n)");

== Argument d'entrée

/ n: un entier: nombre d'espaces.

== Argument de sortie

/ r: un tableau de caractères contenant n espaces

== Description

#strong[blanks]; crée une chaîne composée d'espaces.


== Exemple

``````matlab
blanks(4)
``````


== Voir aussi

#nlink(<string:1_create_convert_text.char>)[char];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
