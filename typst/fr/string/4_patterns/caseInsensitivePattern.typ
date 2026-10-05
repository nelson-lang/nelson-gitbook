#import "../nelson_help.typ": *

= caseInsensitivePattern <string:4_patterns.caseInsensitivePattern>

Recherche un motif en ignorant la casse.

== Syntaxe

- #raw("R = caseInsensitivePattern(...)");

== Description

#strong[caseInsensitivePattern]; Recherche un motif en ignorant la casse.


== Exemple

``````matlab
pat = caseInsensitivePattern("nelson"); extract("Nelson", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.caseSensitivePattern>)[caseSensitivePattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
