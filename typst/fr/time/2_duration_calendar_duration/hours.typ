#import "../nelson_help.typ": *

= hours <time:2_duration_calendar_duration.hours>

Cree des durees depuis des heures ou convertit des durees en heures.

== Syntaxe

- #raw("d = hours(x)");
- #raw("x = hours(d)");

== Argument d'entrée

/ inputs: Nombres d heures numeriques ou tableaux duration.

== Argument de sortie

/ output: Un tableau duration pour une entree numerique, ou des nombres d heures double pour une entree duration.

== Description

Cree des durees depuis des heures ou convertit des durees en heures.

 hours est un outil de conversion de temps ecoule. Une entree numerique est stockee en secondes dans un objet duration avec format d affichage en heures.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
d = hours([1 2])
seconds(d)
hours(minutes(90))

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
