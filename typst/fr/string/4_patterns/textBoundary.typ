#import "../nelson_help.typ": *

= textBoundary <string:4_patterns.textBoundary>

Motif de debut ou de fin de texte.

== Syntaxe

- #raw("R = textBoundary(...)");

== Description

#strong[textBoundary]; Motif de debut ou de fin de texte.


== Exemple

``````matlab
pat = textBoundary("start") + lettersPattern(3) + textBoundary("end"); extract("abc", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.lineBoundary>)[lineBoundary];, #nlink(<string:4_patterns.whitespaceBoundary>)[whitespaceBoundary];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
