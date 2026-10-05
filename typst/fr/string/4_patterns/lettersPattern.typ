#import "../nelson_help.typ": *

= lettersPattern <string:4_patterns.lettersPattern>

Motif pour les caracteres alphabetiques.

== Syntaxe

- #raw("R = lettersPattern(...)");

== Description

#strong[lettersPattern]; Motif pour les caracteres alphabetiques.


== Exemple

``````matlab
pat = lettersPattern; extract("abc123", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.digitsPattern>)[digitsPattern];, #nlink(<string:4_patterns.alphanumericsPattern>)[alphanumericsPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
