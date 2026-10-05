#import "nelson_help.typ": *

= relativepath <files_folders_functions:relativepath>

Renvoie le chemin relatif d'un chemin actuel vers un chemin cible.

== Syntaxe

- #raw("r = relativepath(path_1, path_2)");

== Argument d'entrée

/ path\_1: a string: fichier ou répertoire.
/ path\_2: a string: fichier ou répertoire cible.

== Argument de sortie

/ r: a string: chemin relatif.

== Description

Renvoie le chemin relatif d'un chemin actuel vers le chemin cible.


== Exemple

``````matlab
relativepath(nelsonroot(), [nelsonroot(), '/lgpl-3.0.md'])
relativepath(nelsonroot(), [nelsonroot(), '/etc/finish.m'])
relativepath([nelsonroot(),'/bin'], [nelsonroot(), '/lgpl-3.0.md'])
relativepath('.', '.')
relativepath('.', '..')
relativepath('..', '.')
``````


== Voir aussi

#nlink(<files_folders_functions:cd>)[cd];, #nlink(<files_folders_functions:dir>)[dir];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
