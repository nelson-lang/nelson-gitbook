#import "../nelson_help.typ": *

= regexpPattern <string:5_regular_expressions.regexpPattern>

Motif issu d'une expression reguliere.

== Syntaxe

- #raw("R = regexpPattern(...)");

== Description

#strong[regexpPattern]; Motif issu d'une expression reguliere.


== Exemple

``````matlab
pat = regexpPattern('\d+'); extract("abc123", pat)
``````


== Voir aussi

#nlink(<string:5_regular_expressions.regexp>)[regexp];, #nlink(<string:5_regular_expressions.regexprep>)[regexprep];, #nlink(<string:4_patterns.pattern>)[pattern];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
