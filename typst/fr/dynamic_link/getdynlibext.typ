#import "nelson_help.typ": *

= getdynlibext <dynamic_link:getdynlibext>

Renvoie l'extension des bibliothèques dynamiques

== Syntaxe

- #raw("ext = getdynlibext()");

== Argument de sortie

/ ext: une chaîne : extension des bibliothèques dynamiques

== Description

#strong[getdynlibext()]; returns the extension of dynamic libraries.


== Exemple

``````matlab
getdynlibext()
``````


== Voir aussi

#nlink(<modules_manager:addgateway>)[addgateway];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
