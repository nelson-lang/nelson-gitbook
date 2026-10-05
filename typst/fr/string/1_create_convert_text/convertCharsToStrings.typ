#import "../nelson_help.typ": *

= convertCharsToStrings <string:1_create_convert_text.convertCharsToStrings>

Convertit des tableaux de caractères en tableaux de chaînes.

== Syntaxe

- #raw("S = convertCharsToStrings(C)");
- #raw("[B1, B2, ..., BN] = convertCharsToStrings(A1, A2, ..., AN)");

== Argument d'entrée

/ C: si C est un tableau de caractères, la sortie S sera convertie en tableau de chaînes.
/ A1, A2, ..., AN: variables à convertir en tableau de chaînes si elles sont des tableaux de caractères.

== Argument de sortie

/ S: un tableau de chaînes ou la variable inchangée
/ B1, B2, ..., BN: variables converties en tableau de chaînes si elles sont des tableaux de caractères ou des cellules de tableaux de caractères.

== Description

#strong[convertCharsToStrings]; convertit des tableaux de caractères en tableaux de chaînes.


== Exemple

``````matlab
[A, B, C, D] = convertCharsToStrings("one", 2, 'three', {'four' ; 'NaN' ;'five'})
R = convertCharsToStrings(['Nelson' ; '  is  '; '  good'])
``````


== Voir aussi

#nlink(<string:1_create_convert_text.convertStringsToChars>)[convertStringsToChars];, #nlink(<data_structures:cellstr>)[cellstr];, #nlink(<string:1_create_convert_text.string>)[string];, #nlink(<string:1_create_convert_text.char>)[char];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
