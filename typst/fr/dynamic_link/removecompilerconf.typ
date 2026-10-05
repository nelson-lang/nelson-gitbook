#import "nelson_help.typ": *

= removecompilerconf <dynamic_link:removecompilerconf>

Supprime la configuration du compilateur utilisée (sous Windows)

== Syntaxe

- #raw("res = removecompilerconf()");

== Argument de sortie

/ res: a logical

== Description

#strong[removecompilerconf]; renvoie true si un compilateur avait été configuré avec#strong[configuremsvc]; ou #strong[configuremingw];.

 #strong[removecompilerconf]; renvoie toujours true sur les autres plateformes.


== Voir aussi

#nlink(<dynamic_link:configuremsvc>)[configuremsvc];, #nlink(<dynamic_link:configuremingw>)[configuremingw];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
