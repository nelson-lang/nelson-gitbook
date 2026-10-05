#import "../nelson_help.typ": *

= nweekdate <time:1_create_date_time_arrays.nweekdate>

Renvoie le n-ieme jour de semaine selectionne dans un mois.

== Syntaxe

- #raw("d = nweekdate(n, weekdayNumber, yearNumber, monthNumber)");

== Argument d'entrée

/ inputs: Numero d occurrence, numero de jour de semaine, annee et mois.

== Argument de sortie

/ output: Un numero de date serie, ou NaN lorsque l occurrence demandee n existe pas.

== Description

Renvoie le n-ieme jour de semaine selectionne dans un mois.

 Les numeros de jours suivent weekday: dimanche vaut 1 et samedi vaut 7.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
datestr(nweekdate(2, 2, 2024, 1))
nweekdate(5, 2, 2024, 2)

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
