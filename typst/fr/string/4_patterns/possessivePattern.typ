#import "../nelson_help.typ": *

= possessivePattern <string:4_patterns.possessivePattern>

Recherche un motif de maniere possessive.

== Syntaxe

- #raw("R = possessivePattern(...)");

== Description

#strong[possessivePattern]; Recherche un motif de maniere possessive.


== Exemple

``````matlab
pat = possessivePattern("a"); char(pat)
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
