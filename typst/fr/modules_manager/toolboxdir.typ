#import "nelson_help.typ": *

= toolboxdir <modules_manager:toolboxdir>

Renvoie le chemin d'un module.

== Syntaxe

- #raw("p = toolboxdir(module_short_name)");

== Argument d'entrée

/ module\_short\_name: chaîne : nom court du module.

== Argument de sortie

/ p: chaîne : chemin du module.

== Description

#strong[toolboxdir]; est une fonction d'aide qui renvoie le chemin racine d'un module.


== Exemple

``````matlab
toolboxdir('core')
``````


== Voir aussi

#nlink(<modules_manager:modulepath>)[modulepath];, #nlink(<modules_manager:getmodules>)[getmodules];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
