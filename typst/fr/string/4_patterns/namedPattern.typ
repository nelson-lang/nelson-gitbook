#import "../nelson_help.typ": *

= namedPattern <string:4_patterns.namedPattern>

Motif nomme.

== Syntaxe

- #raw("R = namedPattern(...)");

== Description

#strong[namedPattern]; Motif nomme.


== Exemple

``````matlab
pat = namedPattern(digitsPattern(3), "code"); extract("code 123", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.maskedPattern>)[maskedPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
