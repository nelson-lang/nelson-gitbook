#import "../nelson_help.typ": *

= isduration <time:5_query_date_time_arrays.isduration>

Teste si une entree est un tableau duration.

== Syntaxe

- #raw("tf = isduration(A)");

== Argument d'entrée

/ inputs: Toute valeur Nelson.

== Argument de sortie

/ output: Un scalaire logique.

== Description

Teste si une entree est un tableau duration.

 Utilisez isduration avant de convertir un temps ecoule avec seconds, minutes, hours, days ou years.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
isduration(seconds(10))
isduration(datetime(2024,1,1))

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
