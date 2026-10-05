#import "nelson_help.typ": *

= loadcompilerconf <dynamic_link:loadcompilerconf>

Charger la configuration du compilateur

== Syntaxe

- #raw("res = loadcompilerconf()");
- #raw("[res, compiler] = loadcompilerconf()");

== Argument de sortie

/ res: un booléen
/ compiler: une chaîne : 'msvc', 'mingw', 'unix' ou ' '

== Description

#strong[loadcompilerconf]; renvoie true si un compilateur a été configuré auparavant avec#strong[configuremsvc]; ou #strong[configuremingw];.

 #strong[loadcompilerconf]; renvoie toujours false sur les autres plateformes et 'unix' comme compilateur.

 #strong[loadcompilerconf]; est appelé au démarrage de Nelson.


== Voir aussi

#nlink(<dynamic_link:removecompilerconf>)[removecompilerconf];, #nlink(<dynamic_link:configuremingw>)[configuremingw];, #nlink(<dynamic_link:configuremsvc>)[configuremsvc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
