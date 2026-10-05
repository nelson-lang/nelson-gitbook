#import "../nelson_help.typ": *

= isweekend <time:5_query_date_time_arrays.isweekend>

Teste si des dates tombent un samedi ou un dimanche.

== Syntaxe

- #raw("tf = isweekend(t)");

== Argument d'entrée

/ inputs: Valeurs datetime, numeros de date serie ou entrees compatibles date.

== Argument de sortie

/ output: Un tableau logique.

== Description

Teste si des dates tombent un samedi ou un dimanche.

 isweekend utilise la numerotation weekday ou dimanche et samedi sont des jours de weekend.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
isweekend(datetime(2024, 6, 8))
isweekend(datetime(2024, 6, 10))

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
