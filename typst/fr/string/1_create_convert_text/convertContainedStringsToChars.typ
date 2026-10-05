#import "../nelson_help.typ": *

= convertContainedStringsToChars <string:1_create_convert_text.convertContainedStringsToChars>

Convertit les tableaux de chaines contenus en vecteurs de caracteres.

== Syntaxe

- #raw("R = convertContainedStringsToChars(...)");

== Description

#strong[convertContainedStringsToChars]; Convertit les tableaux de chaines contenus en vecteurs de caracteres.


== Exemple

``````matlab
C = convertContainedStringsToChars({"one", "two"})
``````


== Voir aussi

#nlink(<string:1_create_convert_text.convertStringsToChars>)[convertStringsToChars];, #nlink(<string:1_create_convert_text.convertCharsToStrings>)[convertCharsToStrings];, #nlink(<string:1_create_convert_text.string>)[string];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
