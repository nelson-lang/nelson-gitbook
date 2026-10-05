#import "nelson_help.typ": *

= varislock <memory_manager:varislock>

Vérifie si une variable est verrouillée.

== Syntaxe

- #raw("state = varislock(scope, variable_name)");

== Argument d'entrée

/ scope: une chaîne : 'global', 'base', 'caller', 'local'.
/ variable\_name: une chaîne : nom de la variable.

== Description

#strong[varislock]; renvoie vrai si#strong[variable\_name]; a été déclarée comme variable verrouillée, et faux sinon.


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

``````


== Voir aussi

#nlink(<memory_manager:varlock>)[varlock];, #nlink(<memory_manager:varunlock>)[varunlock];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
