#import "nelson_help.typ": *

= clearfun <functions_manager:clearfun>

Efface une fonction intégrée.

== Syntaxe

- #raw("l = clearfun(function_name)");
- #raw("l = clearfun(function_handle)");

== Argument d'entrée

/ function\_name: une chaîne : nom de fonction.
/ function\_handle: un handle de fonction.

== Argument de sortie

/ l: un booléen

== Description

#strong[clearfun]; efface une fonction intégrée.


== Exemple

``````matlab
cos(3)
a = clearfun('cos')
cos(3)

sin(3)
b = clearfun(str2func('sin'))
sin(3)

``````


== Voir aussi

#nlink(<functions_manager:feval>)[feval];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
