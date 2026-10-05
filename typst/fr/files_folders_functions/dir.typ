#import "nelson_help.typ": *

= dir <files_folders_functions:dir>

Renvoie la liste des fichiers.

== Syntaxe

- #raw("dir");
- #raw("dir(dirname)");
- #raw("dir(dirname, '-s')");
- #raw("res =dir()");
- #raw("res = dir(dirname)");
- #raw("res = dir(dirname, '-s')");

== Argument d'entrée

/ dirname: a string: nom de fichier ou de répertoire.
/ '-s': a string: inclut également les sous-répertoires.

== Argument de sortie

/ res: une structure avec les champs : name, date, bytes, isdir, datenum.

== Description

#strong[dir]; affiche la liste des fichiers et dossiers dans le répertoire courant.

 Le caractère \* (joker) est supporté dans les noms de fichiers et chemins.


== Exemple

``````matlab
res = dir(nelsonroot())
res = dir(nelsonroot(), '-s')res = dir([nelsonroot(),'/*.m'], '-s')
``````


== Voir aussi

#nlink(<files_folders_functions:ls>)[ls];, #nlink(<files_folders_functions:isdir>)[isdir];, #nlink(<files_folders_functions:isfile>)[isfile];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
