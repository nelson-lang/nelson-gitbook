#import "../nelson_help.typ": *

= minutes <time:2_duration_calendar_duration.minutes>

Cree des durees depuis des minutes ou convertit des durees en minutes.

== Syntaxe

- #raw("d = minutes(x)");
- #raw("x = minutes(d)");

== Argument d'entrée

/ inputs: Nombres de minutes numeriques ou tableaux duration.

== Argument de sortie

/ output: Un tableau duration pour une entree numerique, ou des nombres de minutes double pour une entree duration.

== Description

Cree des durees depuis des minutes ou convertit des durees en minutes.

 minutes stocke le temps ecoule en secondes en interne et fournit une construction et extraction pratique en minutes.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
d = minutes([30 90])
seconds(d)
minutes(hours(2))

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
