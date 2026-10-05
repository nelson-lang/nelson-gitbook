#import "nelson_help.typ": *

= findcmake <dynamic_link:findcmake>

Trouver le chemin de CMake

== Syntaxe

- #raw("[status, cmake_path] = findcmake()");

== Argument de sortie

/ status: a logical.
/ cmake\_path: a string: path of CMake or ' '.

== Description

Trouve le chemin de CMake.

 CMake est utilisé en interne pour générer les makefiles permettant de construire des bibliothèques dynamiques à la volée.


== Exemple

``````matlab
[status, cmake_path] = findcmake()
``````


== Voir aussi

#nlink(<dynamic_link:cmake>)[cmake];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
