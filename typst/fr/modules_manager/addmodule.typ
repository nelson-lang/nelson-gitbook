#import "nelson_help.typ": *

= addmodule <modules_manager:addmodule>

Ajouter un module à Nelson.

== Syntaxe

- #raw("addmodule(module_path, module_short_name)");

== Argument d'entrée

/ module\_path: chaîne : chemin racine d'un module. Le chemin doit exister.
/ module\_short\_name: chaîne : nom court du module. Ce nom ne doit pas être déjà utilisé.

== Description

#strong[addmodule]; enregistre un nouveau module identifié par son chemin et son nom court.


== Exemple

Voir le squelette de module pour un exemple

``````matlab
ismodule('module_skeleton')
addmodule([nelsonroot(), '/module_skeleton'], 'module_skeleton')
ismodule('module_skeleton')
removemodule('module_skeleton')
``````


== Voir aussi

#nlink(<modules_manager:ismodule>)[ismodule];, #nlink(<modules_manager:removemodule>)[removemodule];, #nlink(<modules_manager:getmodules>)[getmodules];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
