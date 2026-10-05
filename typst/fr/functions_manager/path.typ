#import "nelson_help.typ": *

= path <functions_manager:path>

Modifie ou affiche le chemin de chargement de Nelson.

== Syntaxe

- #raw("path()");
- #raw("p = path()");
- #raw("path(dirname)");
- #raw("path(path(), dirname)");
- #raw("path(dirname, path())");

== Argument d'entrée

/ dirname: un nom de répertoire ou une suite de noms de répertoires utilisant pathsep()

== Argument de sortie

/ p: chaîne : les chemins spécifiés

== Description

#strong[path]; modifie ou affiche le chemin de chargement de Nelson.


== Exemple

``````matlab
path
p = path()
path(p, tempdir())
path
path(p)

``````


== Voir aussi

#nlink(<functions_manager:rmpath>)[rmpath];, #nlink(<functions_manager:addpath>)[addpath];, #nlink(<functions_manager:rehash>)[rehash];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
