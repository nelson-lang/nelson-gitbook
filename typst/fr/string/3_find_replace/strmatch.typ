#import "../nelson_help.typ": *

= strmatch <string:3_find_replace.strmatch>

Recherche les chaines qui commencent par un texte.

== Syntaxe

- #raw("R = strmatch(...)");

== Description

#strong[strmatch]; Recherche les chaines qui commencent par un texte.


== Exemple

``````matlab
strmatch("max", ["max"; "min"; "maximum"])
``````


== Voir aussi

#nlink(<string:3_find_replace.strfind>)[strfind];, #nlink(<string:3_find_replace.startsWith>)[startsWith];, #nlink(<string:8_compare_text.strcmp>)[strcmp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
