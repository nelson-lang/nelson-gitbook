#import "../nelson_help.typ": *

= exceltime <time:6_text_and_external_time_systems.exceltime>

Convertit des valeurs datetime en numeros de date serie tableur.

== Syntaxe

- #raw("e = exceltime(t)");

== Argument d'entrée

/ inputs: Un tableau datetime.

== Argument de sortie

/ output: Un tableau double de numeros de date serie tableur.

== Description

Convertit des valeurs datetime en numeros de date serie tableur.

 exceltime utilise l origine 1899-12-30 employee par les calculs courants de dates serie de tableur.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
exceltime(datetime(1899, 12, 31))
exceltime(datetime(1900, 1, 1))

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
