#import "../nelson_help.typ": *

= eomday <time:1_create_date_time_arrays.eomday>

Retourne le dernier jour du mois.

== Syntaxe

- #raw("E = eomday(Y, M)");

== Argument d'entrée

/ Y: année : réel.
/ M: mois : réel.

== Argument de sortie

/ E: dernier jour du mois : réel.

== Description

#strong[E \= eomday(Y, M)]; retourne le dernier jour du mois#strong[M]; pour l'année #strong[Y];.


== Exemple

``````matlab
eomday(1900, 1:12)
``````


== Voir aussi

#nlink(<time:1_create_date_time_arrays.datenum>)[datenum];, #nlink(<time:3_date_time_components.weekday>)[weekday];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
