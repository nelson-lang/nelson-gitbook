#import "nelson_help.typ": *

= throw <error_manager:throw>

lancer une erreur.

== Syntaxe

- #raw("throw(MException)");

== Argument d'entrée

/ MException: objet MException

== Description

#strong[throw(MException)]; lance une exception basée sur les informations contenues dans l'objet #strong[MException];.


== Exemple

``````matlab

ME = MException('nelson:errorId', 'my error')
throw(ME)
``````


== Voir aussi

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:rethrow>)[rethrow];, #nlink(<error_manager:throwAsCaller>)[throwAsCaller];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
