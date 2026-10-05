#import "nelson_help.typ": *

= parsefile <interpreter:parsefile>

Analyser un fichier Nelson.

== Syntaxe

- #raw("status = parsefile(filename)");

== Argument d'entrée

/ filename: une chaîne : un nom de fichier à analyser.

== Argument de sortie

/ status: une chaîne : 'script', 'function', 'error'.

== Description

#strong[parsefile]; analyse un fichier et renvoie s'il s'agit d'un script valide, d'une fonction valide ou d'une erreur.


== Exemple

``````matlab
parsefile([nelsonroot(), '/etc/startup.m'])
parsefile([nelsonroot(), '/modules/data_structures/functions/cellstr.m'])
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
