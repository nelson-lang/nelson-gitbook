#import "nelson_help.typ": *

= intmax <integer:intmax>

Renvoie le plus grand entier pouvant être représenté pour un type entier.

== Syntaxe

- #raw("imax = intmax()");
- #raw("imax = intmax(classname)");

== Argument d'entrée

/ classname: une chaîne : par défaut : int32

== Argument de sortie

/ imax: le plus grand entier

== Description

#strong[imax \= intmax(classname)]; le plus grand entier pouvant être représenté pour un type entier.

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
A = intmax('int64')
res = class(A)
``````

``````matlab
A = intmax('uint32')
res = class(C)
``````


== Voir aussi

#nlink(<integer:intmin>)[intmin];, #nlink(<types:class>)[class];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
