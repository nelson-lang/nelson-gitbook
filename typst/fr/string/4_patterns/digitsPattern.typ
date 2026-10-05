#import "../nelson_help.typ": *

= digitsPattern <string:4_patterns.digitsPattern>

Motif pour les caracteres numeriques.

== Syntaxe

- #raw("R = digitsPattern(...)");

== Description

#strong[digitsPattern]; Motif pour les caracteres numeriques.


== Exemple

``````matlab
pat = digitsPattern; extract("abc123", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.lettersPattern>)[lettersPattern];, #nlink(<string:4_patterns.alphanumericsPattern>)[alphanumericsPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
