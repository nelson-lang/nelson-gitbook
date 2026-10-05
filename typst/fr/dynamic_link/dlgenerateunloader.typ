#import "nelson_help.typ": *

= dlgenerateunloader <dynamic_link:dlgenerateunloader>

Génère le fichier unloader.m pour une gateway C++

== Syntaxe

- #raw("dlgenerateunloader(destinationdir, libraryname)");

== Argument d'entrée

/ destinationdir: a string: destination directory where is generated the unloader.m file.
/ libraryname: a string or a cell of string: external dynamic library names.

== Description

#strong[dlgenerateunloader]; génère un fichier 'unloader.m' pour décharger des bibliothèques dynamiques externes.


== Exemple

See module skeleton for example

``````matlab

dlgenerateunloader(tempdir(), {'c_dynamic_library_1',  'c_dynamic_library_2'});
text = fileread([tempdir(), 'unloader.m'])
``````


== Voir aussi

#nlink(<dynamic_link:dlgenerateloader>)[dlgenerateloader];, #nlink(<dynamic_link:dlgenerategateway>)[dlgenerategateway];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
