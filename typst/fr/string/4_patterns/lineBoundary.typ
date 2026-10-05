#import "../nelson_help.typ": *

= lineBoundary <string:4_patterns.lineBoundary>

Motif de debut ou de fin de ligne.

== Syntaxe

- #raw("R = lineBoundary(...)");

== Description

#strong[lineBoundary]; Motif de debut ou de fin de ligne.


== Exemple

``````matlab
pat = lineBoundary("start") + lettersPattern(5); extract(sprintf('first\nsecond'), pat)
``````


== Voir aussi

#nlink(<string:4_patterns.textBoundary>)[textBoundary];, #nlink(<string:4_patterns.whitespaceBoundary>)[whitespaceBoundary];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
