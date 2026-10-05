#import "../nelson_help.typ": *

= digitBoundary <string:4_patterns.digitBoundary>

Limite pour le texte numerique.

== Syntaxe

- #raw("R = digitBoundary(...)");

== Description

#strong[digitBoundary]; Limite pour le texte numerique.


== Exemple

``````matlab
pat = digitBoundary("start") + digitsPattern(3); extract("ID123 A45", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.letterBoundary>)[letterBoundary];, #nlink(<string:4_patterns.alphanumericBoundary>)[alphanumericBoundary];, #nlink(<string:4_patterns.digitsPattern>)[digitsPattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
