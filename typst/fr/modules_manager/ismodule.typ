#import "nelson_help.typ": *

= ismodule <modules_manager:ismodule>

Vérifie si un module est chargé.

== Syntaxe

- #raw("state = ismodule(module_short_name)");
- #raw("state = ismodule(module_short_name, 'isprotected')");

== Argument d'entrée

/ module\_short\_name: chaîne : nom court du module à tester.
/ 'isprotected': vérifie si le module est protégé (c.-à-d. module interne).

== Argument de sortie

/ state: a logical.

== Description

#strong[ismodule]; retourne #strong[true]; si le module est chargé, sinon #strong[false];.


== Exemple

``````matlab
ismodule('core')
ismodule('mymodule')
``````


== Voir aussi

#nlink(<modules_manager:requiremodule>)[requiremodule];, #nlink(<modules_manager:getmodules>)[getmodules];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.11.0], ['isprotected' second argument.],
)

// Auteur: Allan CORNET
