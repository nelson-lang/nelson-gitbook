#import "../nelson_help.typ": *

= regexptranslate <string:5_regular_expressions.regexptranslate>

Traduit du texte en expression reguliere.

== Syntaxe

- #raw("newStr = regexptranslate(op, str)");
- #raw("newStr = regexptranslate('flexible', str, expression)");

== Argument d'entrée

/ op: 'escape', 'wildcard' ou 'flexible'.
/ str: texte a traduire.

== Argument de sortie

/ newStr: texte traduit.

== Description

#strong[regexptranslate]; echappe les caracteres speciaux ou traduit les jokers en syntaxe d'expression reguliere.


== Exemple

``````matlab

regexptranslate('escape', 'a+b*c?.m')
regexptranslate('wildcard', '*.m')

``````


== Voir aussi

#nlink(<string:5_regular_expressions.regexp>)[regexp];, #nlink(<string:5_regular_expressions.regexprep>)[regexprep];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
