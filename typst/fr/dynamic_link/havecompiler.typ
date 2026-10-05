#import "nelson_help.typ": *

= havecompiler <dynamic_link:havecompiler>

Détecter si un compilateur C\/C++ est configuré

== Syntaxe

- #raw("[status, compiler] = havecompiler()");

== Argument de sortie

/ status: un booléen.
/ compiler: une chaîne : 'msvc', 'mingw', 'unix' ou ' '.

== Description

#strong[havecompiler]; détecte si un compilateur C\/C++ est configuré pour Nelson.

 Sur les plateformes Unix (Linux, MacOS),#strong[havecompiler]; renvoie toujours #strong[true]; et#strong[unix]; comme compilateur.


== Exemple

``````matlab
[status, message] = havecompiler()
``````


== Voir aussi

#nlink(<dynamic_link:configuremsvc>)[configuremsvc];, #nlink(<dynamic_link:configuremingw>)[configuremingw];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
