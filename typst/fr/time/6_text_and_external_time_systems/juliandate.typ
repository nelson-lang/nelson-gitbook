#import "../nelson_help.typ": *

= juliandate <time:6_text_and_external_time_systems.juliandate>

Convertit des valeurs datetime en dates juliennes.

== Syntaxe

- #raw("j = juliandate(t)");

== Argument d'entrée

/ inputs: Un tableau datetime.

== Argument de sortie

/ output: Un tableau double de dates juliennes.

== Description

Convertit des valeurs datetime en dates juliennes.

 La conversion ajoute le decalage de date julienne aux numeros de date serie Nelson.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
juliandate(datetime(2000, 1, 1))

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
