#import "../nelson_help.typ": *

= wildcardPattern <string:4_patterns.wildcardPattern>

Motif pour le texte avec caracteres generiques.

== Syntaxe

- #raw("R = wildcardPattern(...)");

== Description

#strong[wildcardPattern]; Motif pour le texte avec caracteres generiques.


== Exemple

``````matlab
pat = wildcardPattern; extract("file.txt", "file" + pat + ".txt")
``````


== Voir aussi

#nlink(<string:4_patterns.characterListPattern>)[characterListPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
