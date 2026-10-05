#import "nelson_help.typ": *

= fullfile <files_folders_functions:fullfile>

Construit un nom de fichier complet à partir de ses parties.

== Syntaxe

- #raw("R = fullfile(part1, ... , partN)");

== Argument d'entrée

/ part1, ... , partN: a string ou un tableau de chaînes : parties du chemin à concaténer.

== Argument de sortie

/ R: un tableau de caractères, tableau de chaînes, ou cellule de vecteurs de caractères.

== Description

#strong[R \= fullfile(part1, ..., partN)]; construit un nom de fichier complet à partir des parties fournies.


== Exemple

``````matlab
fullfile([nelsonroot(), '/./toto'])
``````


== Voir aussi

#nlink(<files_folders_functions:fullpath>)[fullpath];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
