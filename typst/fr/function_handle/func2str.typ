#import "nelson_help.typ": *

= func2str <function_handle:func2str>

Renvoie une représentation chaîne d'un function handle.

== Syntaxe

- #raw("func_handle = str2func(str)");

== Argument d'entrée

/ str: a string.

== Argument de sortie

/ func\_handle: un function handle

== Description

#strong[func\_handle \= str2func(str)]; renvoie un function handle construit à partir de la chaîne #strong[str];.


== Exemple

``````matlab
fh = str2func('cos')
class(fh)
``````


== Voir aussi

#nlink(<function_handle:func2str>)[func2str];, #nlink(<function_handle:isfunction_handle>)[isfunction\_handle];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
