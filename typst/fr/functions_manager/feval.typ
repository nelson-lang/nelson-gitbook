#import "nelson_help.typ": *

= feval <functions_manager:feval>

Évalue une fonction.

== Syntaxe

- #raw("feval(function_name; x1, ..., xn)");
- #raw("feval(function_handle; x1, ..., xn)");
- #raw("[r1, ..., rn] = feval(function_name, x1, ..., xn)");
- #raw("[r1, ..., rn] = feval(function_handle, x1, ..., xn)");

== Argument d'entrée

/ function\_name: une chaîne : nom de fonction.
/ function\_handle: un handle de fonction.
/ x1, ..., xn: arguments d'entrée de la fonction.

== Argument de sortie

/ r1, ..., rn: arguments de sortie retournés par la fonction

== Description

#strong[feval]; appelle la fonction de base ou la fonction intégrée décrite par son nom ou handle de fonction et arguments d'entrée.


== Exemple

``````matlab
a = feval('cos', 0)
b = feval(str2func('cos'), 0)
``````


== Voir aussi

#nlink(<functions_manager:builtin>)[builtin];, #nlink(<function_handle:func2str>)[func2str];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
