#import "nelson_help.typ": *

= getlanguage <localization:getlanguage>

Renvoie la langue courante dans Nelson.

== Syntaxe

- #raw("lang = getlanguage()");

== Argument de sortie

/ lang: une chaîne : langue courante utilisée dans Nelson.

== Description

#strong[getlanguage]; renvoie la langue courante utilisée dans Nelson.


== Exemple

``````matlab
l = getlanguage()
``````


== Voir aussi

#nlink(<localization:setlanguage>)[setlanguage];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
