#import "nelson_help.typ": *

= str2func <function_handle:str2func>

Renvoie un function handle à partir d'une chaîne.

== Syntaxe

- #raw("func_handle = str2func(str)");

== Argument d'entrée

/ str: a string

== Argument de sortie

/ func\_handle: un function handle.

== Description

#strong[function\_handle \= str2func(str)]; renvoie un function handle #strong[function\_handle]; pour la fonction nommée dans la chaîne #strong[str];

 #strong[str]; nom de fonction ou représentation d'une fonction anonyme.


== Exemples

``````matlab
fh = str2func('cos')
str = func2str(fh)
``````

``````matlab
myFind = str2func('@(x, y) find(x > y)')
M = rand(4, 3, 5);
[R, C] = myFind(M, 0.9)
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
