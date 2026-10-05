#import "../nelson_help.typ": *

= asFewOfPattern <string:4_patterns.asFewOfPattern>

Repete le motif le moins de fois possible.

== Syntaxe

- #raw("R = asFewOfPattern(...)");

== Description

#strong[asFewOfPattern]; Repete le motif le moins de fois possible.


== Exemple

``````matlab
pat = asFewOfPattern("b"); extract("abbbc", "a" + pat + "c")
``````


== Voir aussi

#nlink(<string:4_patterns.asManyOfPattern>)[asManyOfPattern];, #nlink(<string:4_patterns.optionalPattern>)[optionalPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
