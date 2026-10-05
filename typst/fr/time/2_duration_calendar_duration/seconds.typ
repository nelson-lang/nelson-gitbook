#import "../nelson_help.typ": *

= seconds <time:2_duration_calendar_duration.seconds>

Cree des durees depuis des secondes ou extrait les secondes de durees.

== Syntaxe

- #raw("d = seconds(x)");
- #raw("x = seconds(d)");

== Argument d'entrée

/ inputs: Nombres de secondes numeriques ou tableaux duration.

== Argument de sortie

/ output: Un tableau duration pour une entree numerique, ou des nombres de secondes double pour une entree duration.

== Description

Cree des durees depuis des secondes ou extrait les secondes de durees.

 seconds est l unite de base de temps ecoule utilisee par duration. Elle est utile pour les comparaisons numeriques, l arithmetique et la conversion depuis d autres unites.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
d = seconds([1 2])
seconds(minutes(2))

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
