#import "../nelson_help.typ": *

= hms <time:3_date_time_components.hms>

Separe les valeurs datetime ou duration en heures, minutes et secondes.

== Syntaxe

- #raw("[h, m, s] = hms(t)");

== Argument d'entrée

/ inputs: Entree datetime, duration, numero de date serie ou compatible date.

== Argument de sortie

/ output: Trois tableaux double contenant heures, minutes et secondes.

== Description

Separe les valeurs datetime ou duration en heures, minutes et secondes.

 Pour une entree duration, la partie heures peut depasser 23 car elle represente des heures ecoulees. Pour datetime, elle represente l heure du jour.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
[h, m, s] = hms(duration(27, 5, 6))
[h, m, s] = hms(datetime(2024, 5, 17, 13, 14, 15))

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
