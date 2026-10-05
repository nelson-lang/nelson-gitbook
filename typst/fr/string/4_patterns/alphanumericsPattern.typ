#import "../nelson_help.typ": *

= alphanumericsPattern <string:4_patterns.alphanumericsPattern>

Motif pour les caracteres alphanumeriques.

== Syntaxe

- #raw("R = alphanumericsPattern(...)");

== Description

#strong[alphanumericsPattern]; Motif pour les caracteres alphanumeriques.


== Exemple

``````matlab
pat = alphanumericsPattern; extract("A1 !", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.lettersPattern>)[lettersPattern];, #nlink(<string:4_patterns.digitsPattern>)[digitsPattern];, #nlink(<string:4_patterns.characterListPattern>)[characterListPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
