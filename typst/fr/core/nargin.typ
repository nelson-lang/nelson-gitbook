#import "nelson_help.typ": *

= nargin <core:nargin>

Nombre d'arguments d'entrée d'une fonction.

== Syntaxe

- #raw("R = nargin()");
- #raw("R = nargin(function_name)");
- #raw("R = nargin(function_handle)");

== Argument d'entrée

/ function\_name: une chaîne : nom de la fonction
/ function\_handle: un handle de fonction

== Argument de sortie

/ R: une valeur entière : nombre d'arguments d'entrée

== Description

Retourne le nombre d'arguments d'entrée fournis à la fonction appelée.

 Sans argument d'entrée, #strong[nargin]; retourne le nombre d'arguments d'entrée utilisés pour appeler la fonction en cours d'exécution.

 Avec un nom de fonction ou un handle de fonction, #strong[nargin]; retourne le nombre d'arguments d'entrée déclarés par cette fonction.

 Si le dernier argument d'entrée déclaré est #strong[varargin];, la valeur retournée est négative. Sa valeur absolue est le nombre total d'arguments d'entrée déclarés, #strong[varargin]; inclus. Par exemple, pour une fonction déclarée sous la forme #strong[f(a, b, varargin)];, #strong[nargin('f')]; retourne #strong[-3];.


== Exemples

With an macro function:

``````matlab
nargin('getfield')
``````

With an builtin function:

``````matlab
nargin('cos')
``````


== Voir aussi

#nlink(<core:nargout>)[nargout];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
