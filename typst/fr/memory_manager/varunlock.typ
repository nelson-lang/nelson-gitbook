#import "nelson_help.typ": *

= varunlock <memory_manager:varunlock>

Déroque une variable.

== Syntaxe

- #raw("varunlock(scope, variable_name)");

== Argument d'entrée

/ scope: une chaîne : 'global', 'base', 'caller', 'local'.
/ variable\_name: une chaîne : nom de la variable.

== Description

#strong[varunlock]; déverrouille une variable.


== Exemple

``````matlab
y = 3;
varislock('local', 'y')
varlock('local', 'y')
varislock('local', 'y')
y = 4
varunlock('local', 'y')
varislock('local', 'y')
y = 4
varlock('local', 'ans')
varislock('local', 'ans')


``````


== Voir aussi

#nlink(<memory_manager:varislock>)[varislock];, #nlink(<memory_manager:varlock>)[varlock];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
