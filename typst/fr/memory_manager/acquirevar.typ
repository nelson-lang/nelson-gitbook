#import "nelson_help.typ": *

= acquirevar <memory_manager:acquirevar>

Récupère la valeur d'une variable depuis une portée de variables spécifiée.

== Syntaxe

- #raw("value = acquirevar(scope, variable_name)");

== Argument d'entrée

/ scope: une chaîne : 'global', 'base', 'caller', 'local'.
/ variable\_name: une chaîne : nom du symbole à chercher.

== Argument de sortie

/ value: valeur de la variable recherchée.

== Description

#strong[acquirevar]; cherche un symbole dans une portée spécifique et copie sa valeur dans la portée courante.


== Exemple

``````matlab
 Y = 'variable in base scope';
function myfun()
  disp(acquirevar('base', 'Y')
end
myfun()
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
