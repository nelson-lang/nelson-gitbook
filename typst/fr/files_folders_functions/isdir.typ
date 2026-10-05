#import "nelson_help.typ": *

= isdir <files_folders_functions:isdir>

Retourne vrai si l'argument est un répertoire.

== Syntaxe

- #raw("r = isdir(dirname)");

== Argument d'entrée

/ dirname: a string: nom du répertoire à vérifier.

== Argument de sortie

/ r: un booléen: vrai si c'est un répertoire.

== Description

#strong[isdir(dirname)]; renvoie #strong[true]; si#strong[dirname]; est un répertoire.

 #strong[isdir]; et #strong[isfolder]; sont équivalentes.


== Exemple

``````matlab
isdir(nelsonroot())
isdir([nelsonroot(), '/not_exist_dir'])
``````


== Voir aussi

#nlink(<files_folders_functions:mkdir>)[mkdir];, #nlink(<files_folders_functions:isfile>)[isfile];, #nlink(<files_folders_functions:isfolder>)[isfolder];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
