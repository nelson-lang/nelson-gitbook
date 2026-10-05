#import "nelson_help.typ": *

= rethrow <error_manager:rethrow>

relancer une erreur.

== Syntaxe

- #raw("rethrow(MException)");

== Argument d'entrée

/ MException: objet MException

== Description

#strong[rethrow(MException)]; relance l'erreur spécifiée par #strong[MException];.


== Exemple

``````matlab

try
  a
catch ME
  disp(ME)
  rethrow(ME)
end

``````


== Voir aussi

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:throw>)[throw];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
