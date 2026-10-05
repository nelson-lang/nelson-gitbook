#import "../nelson_help.typ": *

= leapyear <time:5_query_date_time_arrays.leapyear>

Déterminer les années bissextiles.

== Syntaxe

- #raw("tf = leapyear(year)");

== Argument d'entrée

/ year: année : scalaire ou tableau de valeurs numériques.

== Argument de sortie

/ tf: résultat de la détermination bissextile : scalaire ou tableau de valeurs logiques.

== Description

#strong[leapyear]; determines leap years.

 Leap years is done by Gregorian calendar rules.


== Exemple

``````matlab
tf = leapyear([2020 2021 2022])
``````


== Voir aussi

#nlink(<time:1_create_date_time_arrays.datenum>)[datenum];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
