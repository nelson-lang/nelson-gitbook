#import "../nelson_help.typ": *

= isStringScalar <string:2_text_properties.isStringScalar>

vérifie si l'entrée est un tableau de chaînes avec un seul élément.

== Syntaxe

- #raw("r = isStringScalar(str)");

== Argument d'entrée

/ str: une chaîne, un tableau de chaînes ou une cellule de chaînes.

== Argument de sortie

/ r: un booléen : vrai si #strong[res]; est de type chaîne et scalaire, sinon faux.

== Description

#strong[isStringScalar]; vérifie si l'entrée est un tableau de chaînes avec un seul élément.


== Exemple

``````matlab
r = isStringScalar('hello')
r = isStringScalar("hello")
r = isStringScalar(["hello", "world"])
``````


== Voir aussi

#nlink(<types:ischar>)[ischar];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
