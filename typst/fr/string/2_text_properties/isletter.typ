#import "../nelson_help.typ": *

= isletter <string:2_text_properties.isletter>

Détermine quels caractères sont des lettres.

== Syntaxe

- #raw("res = isletter(str)");

== Argument d'entrée

/ str: scalaire, vecteur, matrice ou tableau multidimensionnel.

== Argument de sortie

/ res: tableau logique

== Description

#strong[isletter]; détermine quels caractères sont des lettres.
== Exemples

``````matlab
isletter('Nel Son')
``````

``````matlab
isletter("六書 six writings")
``````


== Voir aussi

#nlink(<string:7_edit_text.toupper>)[toupper];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
