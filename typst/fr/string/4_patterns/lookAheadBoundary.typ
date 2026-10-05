#import "../nelson_help.typ": *

= lookAheadBoundary <string:4_patterns.lookAheadBoundary>

Limite avant un motif.

== Syntaxe

- #raw("R = lookAheadBoundary(...)");

== Description

#strong[lookAheadBoundary]; Limite avant un motif.


== Exemple

``````matlab
pat = lookAheadBoundary(digitsPattern(3)); extract("abc123", lettersPattern(3) + pat)
``````


== Voir aussi

#nlink(<string:4_patterns.lookBehindBoundary>)[lookBehindBoundary];, #nlink(<string:4_patterns.textBoundary>)[textBoundary];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
