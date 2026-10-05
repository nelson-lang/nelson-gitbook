#import "nelson_help.typ": *

= nmm\_build\_loader <modules_manager:nmm_build_loader>

fonction d'aide pour générer le loader principal (loader.m) d'un module externe

== Syntaxe

- #raw("nmm_build_loader(module_short_name, module_root_path)");

== Argument d'entrée

/ module\_short\_name: chaîne : nom court du module.
/ module\_root\_path: chaîne : chemin du module nommé 'module\_short\_name'.

== Description

#strong[nmm\_build\_loader]; génère le fichier loader.m principal d'un module externe.


== Exemple

See module skeleton for example

``````matlab
% see builder.m
``````


== Voir aussi

#nlink(<modules_manager:addmodule>)[addmodule];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
