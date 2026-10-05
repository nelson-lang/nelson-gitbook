#import "../nelson_help.typ": *

= m2xdate <time:6_text_and_external_time_systems.m2xdate>

Convertit des dates serie Nelson en numeros de date serie tableur.

== Syntaxe

- #raw("x = m2xdate(t)");

== Argument d'entrée

/ inputs: Valeurs datetime, numeros de date serie ou entrees compatibles date.

== Argument de sortie

/ output: Un tableau double de numeros de date serie tableur.

== Description

Convertit des dates serie Nelson en numeros de date serie tableur.

 m2xdate soustrait l origine tableur 1899-12-30 aux numeros de date serie Nelson.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
m2xdate(datetime(1900, 1, 1))

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
