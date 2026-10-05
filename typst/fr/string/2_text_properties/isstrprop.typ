#import "../nelson_help.typ": *

= isstrprop <string:2_text_properties.isstrprop>

Determine les categories de caracteres.

== Syntaxe

- #raw("R = isstrprop(...)");

== Description

#strong[isstrprop]; Determine les categories de caracteres.


== Exemple

``````matlab
isstrprop("A1 ", "alpha")
``````


== Voir aussi

#nlink(<string:2_text_properties.isletter>)[isletter];, #nlink(<string:2_text_properties.isspace>)[isspace];, #nlink(<string:2_text_properties.isStringScalar>)[isStringScalar];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
