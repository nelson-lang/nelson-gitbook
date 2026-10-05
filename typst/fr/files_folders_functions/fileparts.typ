#import "nelson_help.typ": *

= fileparts <files_folders_functions:fileparts>

Renvoie le chemin, le nom de fichier et l'extension d'un chemin de fichier.

== Syntaxe

- #raw("[p, f, e] = fileparts(fullpath)");
- #raw("p = fileparts(fullpath, 'path')");
- #raw("f = fileparts(fullpath, 'filename')");
- #raw("e = fileparts(fullpath, 'extension')");

== Argument d'entrée

/ fullpath: a string: chemin de fichier ou de répertoire.

== Argument de sortie

/ p: a string: chemin du répertoire de #strong[fullpath];.
/ f: a string: nom de fichier sans extension de #strong[fullpath];.
/ e: a string: extension de #strong[fullpath];.

== Description

#strong[\[p, f, e\] \= fileparts(fullpath)]; sépare le chemin en trois parties : chemin, nom de fichier, extension (incluant le point).


== Exemple

``````matlab
[p, f, e] = fileparts([nelsonroot(), '/etc/finish.m'])
p = fileparts([nelsonroot(), '/etc/finish.m'], 'path')
f = fileparts([nelsonroot(), '/etc/finish.m'], 'filename')
e = fileparts([nelsonroot(), '/etc/finish.m'], 'extension')
``````


== Voir aussi

#nlink(<files_folders_functions:isdir>)[isdir];, #nlink(<files_folders_functions:isfile>)[isfile];, #nlink(<files_folders_functions:pathsep>)[pathsep];, #nlink(<files_folders_functions:filesep>)[filesep];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
