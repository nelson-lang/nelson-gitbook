#import "../nelson_help.typ": *

= yyyymmdd <time:6_text_and_external_time_systems.yyyymmdd>

Convertit des dates en nombres calendaires yyyymmdd.

== Syntaxe

- #raw("n = yyyymmdd(t)");

== Argument d'entrée

/ inputs: Valeurs datetime, numeros de date serie ou entrees compatibles date.

== Argument de sortie

/ output: Un tableau double ou chaque date vaut annee\*10000 + mois\*100 + jour.

== Description

Convertit des dates en nombres calendaires yyyymmdd.

 yyyymmdd est utile pour des cles de date compactes et triables lorsque l heure n est pas necessaire.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
yyyymmdd(datetime(2024, 5, 17))

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
