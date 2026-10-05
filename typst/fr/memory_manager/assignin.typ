#import "nelson_help.typ": *

= assignin <memory_manager:assignin>

Assigne une valeur à une variable dans une portée de variables spécifiée.

== Syntaxe

- #raw("assignin(scope, variable_name, variable_value)");

== Argument d'entrée

/ scope: une chaîne : 'global', 'base', 'caller', 'local'.
/ variable\_name: une chaîne : nom de la variable destination.
/ variable\_value: variable à assigner.

== Description

#strong[assignin]; assigne une valeur à une variable dans une portée de variables spécifiée.


== Exemple

``````matlab
assignin('base', 'X', 33);
Y = acquirevar('base', 'X');
``````


== Voir aussi

#nlink(<memory_manager:assignin>)[assignin];, #nlink(<memory_manager:who>)[who];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
