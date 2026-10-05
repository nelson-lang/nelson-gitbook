#import "../nelson_help.typ": *

= compose <string:1_create_convert_text.compose>

Formate les donnees en plusieurs chaines.

== Syntaxe

- #raw("R = compose(...)");

== Description

#strong[compose]; Formate les donnees en plusieurs chaines.


== Exemple

``````matlab
compose("value = %0.2f", pi)
``````


== Voir aussi

#nlink(<string:1_create_convert_text.sprintf>)[sprintf];, #nlink(<string:1_create_convert_text.num2str>)[num2str];, #nlink(<string:1_create_convert_text.string>)[string];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
