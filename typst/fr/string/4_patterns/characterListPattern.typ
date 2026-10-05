#import "../nelson_help.typ": *

= characterListPattern <string:4_patterns.characterListPattern>

Motif pour les caracteres enumeres.

== Syntaxe

- #raw("R = characterListPattern(...)");

== Description

#strong[characterListPattern]; Motif pour les caracteres enumeres.


== Exemple

``````matlab
pat = characterListPattern("a", "c"); extract("abc123", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.alphanumericsPattern>)[alphanumericsPattern];, #nlink(<string:4_patterns.wildcardPattern>)[wildcardPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
