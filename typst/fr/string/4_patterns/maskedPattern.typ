#import "../nelson_help.typ": *

= maskedPattern <string:4_patterns.maskedPattern>

Motif avec nom d'affichage.

== Syntaxe

- #raw("R = maskedPattern(...)");

== Description

#strong[maskedPattern]; Motif avec nom d'affichage.


== Exemple

``````matlab
pat = maskedPattern(digitsPattern(3), "area code"); extract("phone 123", pat)
``````


== Voir aussi

#nlink(<string:4_patterns.namedPattern>)[namedPattern];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
