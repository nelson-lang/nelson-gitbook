#import "nelson_help.typ": *

= builtin <functions_manager:builtin>

Exécute une fonction intégrée.

== Syntaxe

- #raw("builtin(function_name; x1, ..., xn)");
- #raw("builtin(function_handle; x1, ..., xn)");
- #raw("[r1, ..., rn] = builtin(function_name, x1, ..., xn)");
- #raw("[r1, ..., rn] = builtin(function_handle, x1, ..., xn)");

== Argument d'entrée

/ function\_name: une chaîne : nom de fonction.
/ function\_handle: un handle de fonction.
/ x1, ..., xn: arguments d'entrée de la fonction intégrée.

== Argument de sortie

/ r1, ..., rn: arguments de sortie retournés par la fonction intégrée

== Description

#strong[builtin]; appelle la fonction intégrée de base décrite par son nom ou handle de fonction et arguments d'entrée.


== Exemple

``````matlab
a = builtin('cos', 0)
b = builtin(str2func('cos'), 0)
``````


== Voir aussi

#nlink(<functions_manager:feval>)[feval];, #nlink(<function_handle:func2str>)[func2str];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
