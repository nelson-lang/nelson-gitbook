#import "nelson_help.typ": *

= getdefaultlanguage <localization:getdefaultlanguage>

Renvoie la langue par défaut utilisée dans Nelson.

== Syntaxe

- #raw("lang = getdefaultlanguage()");

== Argument de sortie

/ lang: une chaîne : 'fr\_FR' par défaut.

== Description

#strong[getdefaultlanguage]; renvoie la langue par défaut utilisée par Nelson.


== Exemple

``````matlab
getdefaultlanguage()
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
