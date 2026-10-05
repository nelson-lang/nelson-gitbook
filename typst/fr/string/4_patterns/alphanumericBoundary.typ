#import "../nelson_help.typ": *

= alphanumericBoundary <string:4_patterns.alphanumericBoundary>

Limite pour le texte alphanumerique.

== Syntaxe

- #raw("R = alphanumericBoundary(...)");

== Description

#strong[alphanumericBoundary]; Limite pour le texte alphanumerique.


== Exemple

``````matlab
pat = alphanumericBoundary("start") + alphanumericsPattern(3); extract("ID A12", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.digitBoundary>)[digitBoundary];, #nlink(<string:4_patterns.letterBoundary>)[letterBoundary];, #nlink(<string:4_patterns.textBoundary>)[textBoundary];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
