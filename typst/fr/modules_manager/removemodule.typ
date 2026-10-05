#import "nelson_help.typ": *

= removemodule <modules_manager:removemodule>

Supprime un module de Nelson.

== Syntaxe

- #raw("removemodule(module_short_name)");

== Argument d'entrée

/ module\_short\_name: chaîne : nom court du module.

== Description

#strong[removemodule]; supprime un module identifié par son nom court.

 Tous les modules du cœur sont protégés et ne peuvent pas être supprimés pendant une session Nelson.


== Exemple

See module skeleton for example

``````matlab
ismodule('module_skeleton')
addmodule([nelsonroot(), '/module_skeleton'], 'module_skeleton')
ismodule('module_skeleton')
removemodule('module_skeleton')
ismodule('module_skeleton')
``````


== Voir aussi

#nlink(<modules_manager:ismodule>)[ismodule];, #nlink(<modules_manager:removemodule>)[addmodule];, #nlink(<modules_manager:getmodules>)[getmodules];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
