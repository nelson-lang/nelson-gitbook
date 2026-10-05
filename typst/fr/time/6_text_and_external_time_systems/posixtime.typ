#import "../nelson_help.typ": *

= posixtime <time:6_text_and_external_time_systems.posixtime>

Convertit des valeurs datetime en secondes ecoulees depuis l epoque POSIX.

== Syntaxe

- #raw("p = posixtime(t)");

== Argument d'entrée

/ inputs: Un tableau datetime.

== Argument de sortie

/ output: Un tableau double de secondes ecoulees depuis 1970-01-01 00:00:00.

== Description

Convertit des valeurs datetime en secondes ecoulees depuis l epoque POSIX.

 posixtime est utile pour echanger avec des systemes qui representent les temps comme secondes depuis l epoque Unix.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
posixtime(datetime(1970, 1, 1))
posixtime(datetime(1970, 1, 2))

``````


== Voir aussi

#nlink(<time:1_create_date_time_arrays.datetime>)[datetime];, #nlink(<time:2_duration_calendar_duration.duration>)[duration];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
