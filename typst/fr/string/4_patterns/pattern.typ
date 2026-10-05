#import "../nelson_help.typ": *

= pattern <string:4_patterns.pattern>

Objet de motif de texte.

== Syntaxe

- #raw("R = pattern(...)");

== Description

#strong[pattern]; Objet de motif de texte.


== Exemple

``````matlab
pat = pattern("abc"); extract("123abc456", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.digitsPattern>)[digitsPattern];, #nlink(<string:4_patterns.lettersPattern>)[lettersPattern];, #nlink(<string:4_patterns.alphanumericsPattern>)[alphanumericsPattern];, #nlink(<string:4_patterns.optionalPattern>)[optionalPattern];, #nlink(<string:5_regular_expressions.regexpPattern>)[regexpPattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
