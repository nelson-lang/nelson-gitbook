#import "../nelson_help.typ": *

= caldays <time:2_duration_calendar_duration.caldays>

Cree des durees calendaires contenant des jours entiers.

== Syntaxe

- #raw("c = caldays(x)");

== Argument d'entrée

/ inputs: Nombres numeriques de jours.

== Argument de sortie

/ output: Un tableau calendarDuration avec composants jours.

== Description

Cree des durees calendaires contenant des jours entiers.

 caldays stocke les valeurs dans le composant jours de calendarDuration. Pour des durees fixes de 24 heures ecoulees, utilisez days.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
datetime(2024, 1, 1) + caldays(3)

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
