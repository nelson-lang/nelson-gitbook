#import "../nelson_help.typ": *

= letterBoundary <string:4_patterns.letterBoundary>

Limite pour le texte alphabetique.

== Syntaxe

- #raw("R = letterBoundary(...)");

== Description

#strong[letterBoundary]; Limite pour le texte alphabetique.


== Exemple

``````matlab
pat = letterBoundary("start") + lettersPattern(3); extract("123abc", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.digitBoundary>)[digitBoundary];, #nlink(<string:4_patterns.alphanumericBoundary>)[alphanumericBoundary];, #nlink(<string:4_patterns.lettersPattern>)[lettersPattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
