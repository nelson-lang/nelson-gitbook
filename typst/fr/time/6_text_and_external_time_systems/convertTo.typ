#import "../nelson_help.typ": *

= convertTo <time:6_text_and_external_time_systems.convertTo>

Convertit des valeurs datetime vers des representations numeriques choisies.

== Syntaxe

- #raw("x = convertTo(t, 'datenum')");
- #raw("x = convertTo(t, 'posixtime')");
- #raw("x = convertTo(t, 'juliandate')");
- #raw("x = convertTo(t, 'exceltime')");
- #raw("x = convertTo(t, 'yyyymmdd')");

== Argument d'entrée

/ inputs: Un tableau datetime et un type de conversion.

== Argument de sortie

/ output: Un tableau numerique correspondant a la representation demandee.

== Description

Convertit des valeurs datetime vers des representations numeriques choisies.

 convertTo regroupe les conversions datetime aussi disponibles via datenum, posixtime, juliandate, exceltime et yyyymmdd.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
t = datetime(2024, 5, 17)
convertTo(t, 'yyyymmdd')

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
