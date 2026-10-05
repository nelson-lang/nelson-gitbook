#import "../nelson_help.typ": *

= quarter <time:3_date_time_components.quarter>

Extrait les numeros de trimestre de valeurs de date et heure.

== Syntaxe

- #raw("q = quarter(t)");

== Argument d'entrée

/ inputs: Valeurs datetime, numeros de date serie ou entrees compatibles date.

== Argument de sortie

/ output: Un tableau double avec valeurs de 1 a 4.

== Description

Extrait les numeros de trimestre de valeurs de date et heure.

 quarter est calcule depuis le mois calendaire avec ceil(month(t)\/3).

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
quarter(datetime(2024, [1 4 7 10], 1))

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
