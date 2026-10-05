#import "nelson_help.typ": *

= varlock <memory_manager:varlock>

Verrouille une variable.

== Syntaxe

- #raw("varlock(scope, variable_name)");

== Argument d'entrée

/ scope: une chaîne : 'global', 'base', 'caller', 'local'.
/ variable\_name: une chaîne : nom de la variable.

== Description

#strong[varlock]; verrouille une variable.

 Les variables verrouillées ne peuvent pas être supprimées.

 #strong[ans]; ne peut pas être verrouillée.


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

#nlink(<memory_manager:varislock>)[varislock];, #nlink(<memory_manager:varunlock>)[varunlock];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
