#import "../nelson_help.typ": *

= whitespaceBoundary <string:4_patterns.whitespaceBoundary>

Limite pour les espaces.

== Syntaxe

- #raw("R = whitespaceBoundary(...)");

== Description

#strong[whitespaceBoundary]; Limite pour les espaces.


== Exemple

``````matlab
pat = whitespaceBoundary("start") + whitespacePattern; extract("abc def", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.whitespacePattern>)[whitespacePattern];, #nlink(<string:4_patterns.textBoundary>)[textBoundary];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
