#import "nelson_help.typ": *

= requiremodule <modules_manager:requiremodule>

Renvoie une erreur si le module n'est pas chargé dans Nelson.

== Syntaxe

- #raw("requiremodule(module_short_name)");

== Argument d'entrée

/ module\_short\_name: chaîne : nom court du module.

== Description

#strong[requiremodule]; renvoie une erreur si le module demandé n'est pas chargé.

 Cette fonction est utile pour vérifier une dépendance sur un autre module.


== Exemple

See module skeleton for example

``````matlab
ismodule('module_skeleton')
requiremodule('module_skeleton')
addmodule([nelsonroot(), '/module_skeleton'], 'module_skeleton')
ismodule('module_skeleton')
requiremodule('module_skeleton')
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
