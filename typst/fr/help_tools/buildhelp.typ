#import "nelson_help.typ": *

= buildhelp <help_tools:buildhelp>

Génère l'aide des modules de Nelson.

== Syntaxe

- #raw("buildhelp()");
- #raw("buildhelp(module_name)");

== Argument d'entrée

/ module\_name: une chaîne : nom du module (le module doit être chargé).

== Description

#strong[buildhelp]; génère les fichiers d'aide.


== Exemple

``````matlab
buildhelp();
buildhelp('core');
``````


== Voir aussi

#nlink(<help_tools:doc>)[doc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.17.0], [gestion des sous-chapitres ajoutée],
)

// Auteur: Allan CORNET
