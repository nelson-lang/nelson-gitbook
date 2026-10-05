#import "nelson_help.typ": *

= dlgeneratecleaner <dynamic_link:dlgeneratecleaner>

Génère le fichier cleaner.m pour une gateway C++

== Syntaxe

- #raw("dlgeneratecleaner(destinationdir)");
- #raw("dlgeneratecleaner(destinationdir, files)");

== Argument d'entrée

/ destinationdir: a string: destination directory where is generated the cleaner.m file.
/ files: a string or a cell of string: list of files to delete.

== Description

#strong[dlgeneratecleaner]; génère un fichier 'cleaner.m' pour supprimer des fichiers.


== Exemple

See module skeleton for example

``````matlab

dlgeneratecleaner(tempdir());
text = fileread([tempdir(), 'cleaner.m'])
``````


== Voir aussi

#nlink(<dynamic_link:dlgenerateunloader>)[dlgenerateunloader];, #nlink(<dynamic_link:dlgenerategateway>)[dlgenerategateway];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
