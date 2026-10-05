#import "nelson_help.typ": *

= diff\_file <files_folders_functions:diff_file>

Compare deux fichiers ou chaînes.

== Syntaxe

- #raw("res = diff(filename_1, filename_2, with_eol)");

== Argument d'entrée

/ filename\_1: a string: nom de fichier.
/ filename\_2: a string: nom de fichier.
/ with\_eol: a logical: prendre en compte la fin de ligne ou non (true par défaut).

== Argument de sortie

/ res: a string: ' ' si aucune différence détectée.
/ msg: a string: message d'erreur

== Description

#strong[diff\_file]; compare deux fichiers et renvoie le diff au format unified.

 Si les fichiers comparés sont identiques, #strong[res]; est une chaîne vide.


== Exemple

``````matlab
res = diff_file([nelsonroot(), '/etc/startup.m'], [nelsonroot(), '/etc/startup.m'])
res = diff_file([nelsonroot(), '/etc/startup.m'], [nelsonroot(), '/etc/finish.m'])
``````


== Voir aussi

#nlink(<files_folders_functions:isdir>)[isdir];, #nlink(<files_folders_functions:isfile>)[isfile];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
