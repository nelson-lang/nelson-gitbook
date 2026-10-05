#import "nelson_help.typ": *

= nargout <core:nargout>

Nombre d'arguments de sortie d'une fonction.

== Syntaxe

- #raw("R = nargout()");
- #raw("R = nargout(function_name)");
- #raw("R = nargout(function_handle)");

== Argument d'entrée

/ function\_name: une chaîne : nom de la fonction
/ function\_handle: un handle de fonction

== Argument de sortie

/ R: une valeur entière : nombre d'arguments de sortie

== Description

Retourne le nombre d'arguments de sortie demandés par l'appelant d'une fonction.


== Exemples

With an macro function:

``````matlab
nargout('cellstr')
``````

With an builtin function:

``````matlab
nargout('cos')
``````


== Voir aussi

#nlink(<core:nargin>)[nargin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
