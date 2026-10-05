#import "nelson_help.typ": *

= isfunction\_handle <function_handle:isfunction_handle>

Vérifie si une valeur est un function handle.

== Syntaxe

- #raw("l = isfunction_handle(func_handle)");

== Argument d'entrée

/ func\_handle: a function handle ou une autre variable.

== Argument de sortie

/ l: un booléen

== Description

#strong[l \= isfunction\_handle(func\_handle)]; vérifie si#strong[func\_handle]; est un function handle et renvoie #strong[true]; si c'est le cas.


== Exemple

``````matlab
fh = str2func('cos')
isfunction_handle(fh)
fh = 3
isfunction_handle(fh)
``````


== Voir aussi

#nlink(<function_handle:str2func>)[str2func];, #nlink(<function_handle:func2str>)[func2str];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
