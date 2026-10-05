#import "../nelson_help.typ": *

= reverse <string:7_edit_text.reverse>

Inverse les caracteres du texte.

== Syntaxe

- #raw("R = reverse(...)");

== Description

#strong[reverse]; Inverse les caracteres du texte.


== Exemple

``````matlab
reverse("abc")
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.fliplr>)[fliplr];, #nlink(<elementary_functions:7_indexing_dimensions.flip>)[flip];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
