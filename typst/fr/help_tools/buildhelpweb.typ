#import "nelson_help.typ": *

= buildhelpweb <help_tools:buildhelpweb>

Génère l'aide des modules de Nelson pour un site web.

== Syntaxe

- #raw("buildhelpweb(destination_dir)");
- #raw("buildhelpweb(destination_dir, language)");

== Argument d'entrée

/ destination\_dir: une chaîne : répertoire de destination.
/ language: une chaîne : langue. Si elle est manquante, la langue par défaut actuelle est utilisée.

== Description

#strong[buildhelpweb]; génère les fichiers d'aide pour un site web.

 fonction interne


== Voir aussi

#nlink(<help_tools:buildhelp>)[buildhelp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
