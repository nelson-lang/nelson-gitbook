#import "nelson_help.typ": *

= restoredefaultpath <functions_manager:restoredefaultpath>

Restaure le chemin de Nelson à son état initial au démarrage.

== Syntaxe

- #raw("restoredefaultpath");

== Description

#strong[restoredefaultpath]; restaure le chemin de recherche de Nelson à son état de démarrage.


== Exemple

``````matlab
path
path('')
path
restoredefaultpath
path
``````


== Voir aussi

#nlink(<functions_manager:rmpath>)[rmpath];, #nlink(<functions_manager:addpath>)[addpath];, #nlink(<functions_manager:path>)[path];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
