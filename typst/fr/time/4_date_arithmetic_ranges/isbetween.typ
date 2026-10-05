#import "../nelson_help.typ": *

= isbetween <time:4_date_arithmetic_ranges.isbetween>

Teste si des valeurs datetime appartiennent a un intervalle.

== Syntaxe

- #raw("tf = isbetween(t, lowerBound, upperBound)");
- #raw("tf = isbetween(t, lowerBound, upperBound, intervalType)");

== Argument d'entrée

/ inputs: Valeurs date et bornes inferieure\/superieure, avec type d intervalle optionnel: closed, open, openleft, openright, \[\], (), (\] ou \[).

== Argument de sortie

/ output: Un tableau logique.

== Description

Teste si des valeurs datetime appartiennent a un intervalle.

 L intervalle par defaut est ferme. Les entrees compatibles date sont converties avec datenum avant comparaison.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
isbetween(datetime(2024, 2, 1), datetime(2024, 1, 1), datetime(2024, 3, 1))
isbetween(datetime(2024, 1, 1), datetime(2024, 1, 1), datetime(2024, 3, 1), 'open')

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
