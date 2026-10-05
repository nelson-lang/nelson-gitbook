#import "nelson_help.typ": *

= throwAsCaller <error_manager:throwAsCaller>

Lancer une exception comme si elle se produisait dans la fonction appelante.

== Syntaxe

- #raw("throwAsCaller(MException)");

== Argument d'entrée

/ MException: objet MException

== Description

Elle lance une exception comme si elle se produisait dans la fonction appelante.


== Exemple

``````matlab

function test_throwAsCaller()
  ME = MException('n:m', 'your error')
  throwAsCaller(ME)
``````


== Voir aussi

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:rethrow>)[rethrow];, #nlink(<error_manager:throw>)[throw];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
