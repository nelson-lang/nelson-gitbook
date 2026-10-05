#import "nelson_help.typ": *

= intmin <integer:intmin>

Renvoie le plus petit entier pouvant être représenté pour un type entier.

== Syntaxe

- #raw("imin = intmin()");
- #raw("imin = intmin(classname)");

== Argument d'entrée

/ classname: une chaîne : par défaut : int32

== Argument de sortie

/ imin: le plus petit entier

== Description

#strong[imin \= intmin(classname)]; le plus petit entier pouvant être représenté pour un type entier.

 Les valeurs prises en charge pour la chaîne #strong[classname]; sont :

 'int8'

 'uint8'

 'int16'

 'uint16'

 'int32'

 'uint32'

 'int64'

 'uint64'


== Exemples

``````matlab
A = intmin('int64')
res = class(A)
``````

``````matlab
A = intmin('uint32')
res = class(C)
``````


== Voir aussi

#nlink(<integer:intmax>)[intmax];, #nlink(<types:class>)[class];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
