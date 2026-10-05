#import "nelson_help.typ": *

= dlgenerateloader <dynamic_link:dlgenerateloader>

Génère le fichier loader.m pour une gateway C++

== Syntaxe

- #raw("dlgenerateloader(destinationdir, libraryname)");

== Argument d'entrée

/ destinationdir: a string: destination directory where is generated the loader.m file.
/ libraryname: a string or a cell of string: external dynamic library names.

== Description

#strong[dlgenerateloader]; génère un fichier 'loader.m' pour charger des bibliothèques dynamiques externes.


== Exemple

See module skeleton for example

``````matlab

dlgenerateloader(tempdir(), {'c_dynamic_library_1',  'c_dynamic_library_2'});
text = fileread([tempdir(), 'loader.m'])
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
