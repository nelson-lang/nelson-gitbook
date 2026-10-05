#import "nelson_help.typ": *

= buildhelpjson <help_tools:buildhelpjson>

Construire l'aide de Nelson au format JSON.

== Syntaxe

- #raw("buildhelpjson()");

== Description

#strong[buildhelpjson]; génère des fichiers d'aide (au format JSON) (fonctionnalité interne).


== Exemple

``````matlab
buildhelpjson();
``````


== Voir aussi

#nlink(<help_tools:help>)[help];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
