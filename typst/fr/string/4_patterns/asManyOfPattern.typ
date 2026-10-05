#import "../nelson_help.typ": *

= asManyOfPattern <string:4_patterns.asManyOfPattern>

Repete le motif autant de fois que possible.

== Syntaxe

- #raw("R = asManyOfPattern(...)");

== Description

#strong[asManyOfPattern]; Repete le motif autant de fois que possible.


== Exemple

``````matlab
pat = asManyOfPattern("b"); extract("abbbc", "a" + pat + "c")
``````


== Voir aussi

#nlink(<string:4_patterns.asFewOfPattern>)[asFewOfPattern];, #nlink(<string:4_patterns.optionalPattern>)[optionalPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
