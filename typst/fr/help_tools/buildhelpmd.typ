#import "nelson_help.typ": *

= buildhelpmd <help_tools:buildhelpmd>

Génère l'aide des modules de Nelson pour GitBook.

== Syntaxe

- #raw("buildhelpmd(dirdest)");
- #raw("buildhelpmd(dirdest, module_name)");

== Argument d'entrée

/ dirdest: a string: a path destination.
/ module\_name: une chaîne : nom du module (le module doit être chargé).

== Description

#strong[buildhelpmd]; génère des fichiers d'aide pour GitBook (markdown).


== Exemple

``````matlab
buildhelpmd(tempdir());
buildhelpmd(tempdir(), 'core');
``````


== Voir aussi

#nlink(<help_tools:buildhelp>)[buildhelp];, #nlink(<help_tools:doc>)[doc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
