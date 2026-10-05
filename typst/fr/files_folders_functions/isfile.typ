#import "nelson_help.typ": *

= isfile <files_folders_functions:isfile>

Retourne vrai si l'argument est un fichier.

== Syntaxe

- #raw("r = isfile(name)");

== Argument d'entrée

/ name: a string: nom du fichier à vérifier.

== Argument de sortie

/ r: un booléen: vrai si c'est un fichier.

== Description

#strong[isfile(name)]; renvoie #strong[true]; si#strong[name]; est un fichier.


== Exemple

``````matlab
isfile(nelsonroot())
isfile([nelsonroot(), '/etc/finish.m'])
``````


== Voir aussi

#nlink(<files_folders_functions:mkdir>)[mkdir];, #nlink(<files_folders_functions:isfolder>)[isfolder];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.4.0], [input arguments support scalar string array type],
)

// Auteur: Allan CORNET
