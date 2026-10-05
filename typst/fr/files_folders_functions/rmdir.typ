#import "nelson_help.typ": *

= rmdir <files_folders_functions:rmdir>

Supprime un répertoire.

== Syntaxe

- #raw("rmdir(dirname)");
- #raw("rmdir(dirname, 's')");
- #raw("res = rmdir(dirname)");
- #raw("res = rmdir(dirname, 's')");
- #raw("[res, msg] = rmdir(dirname)");
- #raw("[res, msg] = rmdir(dirname, 's')");

== Argument d'entrée

/ dirname: a string: nom du répertoire à supprimer.
/ 's': a string: supprime aussi les sous-répertoires.

== Argument de sortie

/ res: un booléen: true ou false.
/ msg: a string: message d'erreur ou ' '.

== Description

#strong[res \= rmdir(dirname)]; supprime le répertoire #strong[dirname];.

 Si le répertoire n'est pas vide, il faut utiliser l'argument 's'.


== Exemple

``````matlab

mkdir([tempdir(), 'test'])
rmdir([tempdir(), 'test'])

``````


== Voir aussi

#nlink(<files_folders_functions:isdir>)[isdir];, #nlink(<files_folders_functions:mkdir>)[mkdir];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
