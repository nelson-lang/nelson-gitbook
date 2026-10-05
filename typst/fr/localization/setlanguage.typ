#import "nelson_help.typ": *

= setlanguage <localization:setlanguage>

Modifie la langue utilisée dans Nelson.

== Syntaxe

- #raw("setlanguage(language)");

== Argument d'entrée

/ language: une chaîne : 'fr\_FR', 'fr\_FR' ou d'autres par défaut.

== Description

#strong[setlanguage]; modifie la langue utilisée par Nelson et enregistre ce changement pour les exécutions ultérieures de Nelson.


== Voir aussi

#nlink(<localization:getlanguage>)[getlanguage];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
