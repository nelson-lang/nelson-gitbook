#import "../nelson_help.typ": *

= lookBehindBoundary <string:4_patterns.lookBehindBoundary>

Limite apres un motif.

== Syntaxe

- #raw("R = lookBehindBoundary(...)");

== Description

#strong[lookBehindBoundary]; Limite apres un motif.


== Exemple

``````matlab
pat = lookBehindBoundary("abc") + digitsPattern(3); extract("abc123", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.lookAheadBoundary>)[lookAheadBoundary];, #nlink(<string:4_patterns.textBoundary>)[textBoundary];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
