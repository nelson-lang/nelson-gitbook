#import "../nelson_help.typ": *

= whitespacePattern <string:4_patterns.whitespacePattern>

Motif pour les caracteres d'espacement.

== Syntaxe

- #raw("R = whitespacePattern(...)");

== Description

#strong[whitespacePattern]; Motif pour les caracteres d'espacement.


== Exemple

``````matlab
pat = whitespacePattern; extract("a b", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.whitespaceBoundary>)[whitespaceBoundary];, #nlink(<string:4_patterns.alphanumericsPattern>)[alphanumericsPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
