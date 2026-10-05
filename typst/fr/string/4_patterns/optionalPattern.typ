#import "../nelson_help.typ": *

= optionalPattern <string:4_patterns.optionalPattern>

Rend le motif optionnel.

== Syntaxe

- #raw("R = optionalPattern(...)");

== Description

#strong[optionalPattern]; Rend le motif optionnel.


== Exemple

``````matlab
pat = optionalPattern("u"); extract(["color"; "colour"], "colo" + pat + "r")
``````


== Voir aussi

#nlink(<string:4_patterns.asManyOfPattern>)[asManyOfPattern];, #nlink(<string:4_patterns.asFewOfPattern>)[asFewOfPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
