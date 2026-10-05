#import "../nelson_help.typ": *

= regexpi <string:5_regular_expressions.regexpi>

Recherche par expression reguliere sans tenir compte de la casse.

== Syntaxe

- #raw("out = regexpi(str, expression)");
- #raw("out = regexpi(str, expression, outkey)");

== Argument d'entrée

/ str: texte a analyser.
/ expression: expression reguliere.

== Argument de sortie

/ out: resultat de la recherche.

== Description

#strong[regexpi]; est equivalent a #strong[regexp]; avec la recherche insensible a la casse par defaut.


== Exemple

``````matlab

regexpi('ABC abc', 'abc', 'match')

``````


== Voir aussi

#nlink(<string:5_regular_expressions.regexp>)[regexp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
