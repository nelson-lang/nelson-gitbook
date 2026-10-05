#import "../nelson_help.typ": *

= days <time:2_duration_calendar_duration.days>

Cree des durees depuis des jours ou convertit des durees en jours.

== Syntaxe

- #raw("d = days(x)");
- #raw("x = days(d)");

== Argument d'entrée

/ inputs: Nombres de jours numeriques ou tableaux duration.

== Argument de sortie

/ output: Un tableau duration pour une entree numerique, ou des nombres de jours double pour une entree duration.

== Description

Cree des durees depuis des jours ou convertit des durees en jours.

 days represente des periodes ecoulees de 24 heures. Pour une arithmetique calendaire en calendarDuration, utilisez caldays.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
d = days([1 2])
seconds(d)
days(hours(48))

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
