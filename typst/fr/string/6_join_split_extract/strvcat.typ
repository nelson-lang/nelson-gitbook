#import "../nelson_help.typ": *

= strvcat <string:6_join_split_extract.strvcat>

Concatene verticalement le texte.

== Syntaxe

- #raw("R = strvcat(...)");

== Description

#strong[strvcat]; Concatene verticalement le texte.


== Exemple

``````matlab
strvcat("abc", "de")
``````


== Voir aussi

#nlink(<string:1_create_convert_text.char>)[char];, #nlink(<string:1_create_convert_text.strcat>)[strcat];, #nlink(<string:1_create_convert_text.blanks>)[blanks];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
