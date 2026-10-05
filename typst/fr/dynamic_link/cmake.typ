#import "nelson_help.typ": *

= cmake <dynamic_link:cmake>

Appeler l'outil CMake

== Syntaxe

- #raw("[status, message] = cmake(varargin)");

== Argument d'entrée

/ varargin: commande à envoyer à CMake

== Argument de sortie

/ res: un booléen : true si la commande CMake réussit
/ message: une chaîne : message généré par la commande CMake.

== Description

#strong[cmake]; est utilisé en interne pour générer les makefiles permettant de construire du code C\/C++.

 #strong[cmake]; est utilisé par #strong[dlgeneratemake];.


== Voir aussi

#nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake];, #nlink(<dynamic_link:dlmake>)[dlmake];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
