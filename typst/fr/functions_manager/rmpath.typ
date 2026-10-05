#import "nelson_help.typ": *

= rmpath <functions_manager:rmpath>

Supprime un répertoire du chemin de recherche.

== Syntaxe

- #raw("rmpath(dirname)");
- #raw("previouspaths = rmpath(dirname)");

== Argument d'entrée

/ dirname: nom du répertoire à supprimer

== Argument de sortie

/ previouspaths: une chaîne : chemin avant la suppression des chemins spécifiés

== Description

#strong[rmpath]; supprime un répertoire du chemin de recherche.


== Exemple

``````matlab
path
addpath(tempdir())
path
rmpath(tempdir())
path
``````


== Voir aussi

#nlink(<functions_manager:path>)[path];, #nlink(<functions_manager:addpath>)[addpath];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
