#import "../nelson_help.typ": *

= erase <string:3_find_replace.erase>

Efface le texte correspondant.

== Syntaxe

- #raw("R = erase(...)");

== Description

#strong[erase]; Efface le texte correspondant.


== Exemple

``````matlab
erase("Hello World", " World")
``````


== Voir aussi

#nlink(<string:3_find_replace.eraseBetween>)[eraseBetween];, #nlink(<string:3_find_replace.replace>)[replace];, #nlink(<string:3_find_replace.strrep>)[strrep];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
