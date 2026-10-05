#import "../nelson_help.typ": *

= ymd <time:3_date_time_components.ymd>

Separe les valeurs datetime en composants annee, mois et jour.

== Syntaxe

- #raw("[y, m, d] = ymd(t)");

== Argument d'entrée

/ inputs: Valeurs datetime, numeros de date serie ou entrees compatibles date.

== Argument de sortie

/ output: Trois tableaux double contenant annee, mois et jour.

== Description

Separe les valeurs datetime en composants annee, mois et jour.

 ymd est un raccourci autour de l extraction de vecteur date pour les composants calendaires.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
[y, m, d] = ymd(datetime(2024, 5, 17))

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
