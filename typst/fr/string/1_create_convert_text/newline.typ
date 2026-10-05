#import "../nelson_help.typ": *

= newline <string:1_create_convert_text.newline>

Renvoie le caractère de nouvelle ligne.

== Syntaxe

- #raw("ch = newline()");

== Argument de sortie

/ ch: un caractère : équivalent à char(10)

== Description

#strong[newline]; renvoie un caractère de nouvelle ligne.


== Exemple

``````matlab
double(newline)
``````


== Voir aussi

#nlink(<double:double>)[double];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
