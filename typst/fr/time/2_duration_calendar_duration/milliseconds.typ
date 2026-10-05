#import "../nelson_help.typ": *

= milliseconds <time:2_duration_calendar_duration.milliseconds>

Cree des durees depuis des millisecondes ou convertit des durees en millisecondes.

== Syntaxe

- #raw("d = milliseconds(x)");
- #raw("x = milliseconds(d)");

== Argument d'entrée

/ inputs: Nombres de millisecondes numeriques ou tableaux duration.

== Argument de sortie

/ output: Un tableau duration pour une entree numerique, ou des nombres de millisecondes double pour une entree duration.

== Description

Cree des durees depuis des millisecondes ou convertit des durees en millisecondes.

 Une entree numerique est divisee par 1000 avant stockage en secondes ecoulees. Une entree duration est multipliee par 1000.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
d = milliseconds([250 500])
seconds(d)
milliseconds(seconds(2))

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
