#import "../nelson_help.typ": *

= isspace <string:2_text_properties.isspace>

Détermine quels caractères sont des espaces.

== Syntaxe

- #raw("res = isspace(str)");

== Argument d'entrée

/ str: scalaire, vecteur, matrice ou tableau multidimensionnel.

== Argument de sortie

/ res: le tableau logique

== Description

#strong[isletter]; détermine quels caractères sont des espaces.
== Exemples

``````matlab
isspace('Nel Son')
``````

``````matlab
isspace("六書 six writings")
``````


== Voir aussi

#nlink(<string:2_text_properties.isletter>)[isletter];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [version initiale],
)

// Auteur: Allan CORNET
