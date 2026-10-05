#import "../nelson_help.typ": *

= caseSensitivePattern <string:4_patterns.caseSensitivePattern>

Recherche un motif en tenant compte de la casse.

== Syntaxe

- #raw("R = caseSensitivePattern(...)");

== Description

#strong[caseSensitivePattern]; Recherche un motif en tenant compte de la casse.


== Exemple

``````matlab
pat = caseSensitivePattern("nelson"); extract("Nelson nelson", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.caseInsensitivePattern>)[caseInsensitivePattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
