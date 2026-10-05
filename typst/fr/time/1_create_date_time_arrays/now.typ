#import "../nelson_help.typ": *

= now <time:1_create_date_time_arrays.now>

Renvoie la date et l'heure courantes sous forme de numéro de date série.

== Syntaxe

- #raw("n = now()");

== Argument de sortie

/ n: un double.

== Description

#strong[now()]; renvoie la date et l'heure courantes sous forme d'un numéro de date série.


== Exemple

``````matlab
datevec(now())
``````


== Voir aussi

#nlink(<time:1_create_date_time_arrays.datenum>)[datenum];, #nlink(<time:1_create_date_time_arrays.datevec>)[datevec];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
