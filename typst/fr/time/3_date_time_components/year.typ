#import "../nelson_help.typ": *

= year <time:3_date_time_components.year>

Extrait les annees de valeurs de date et heure.

== Syntaxe

- #raw("y = year(t)");

== Argument d'entrée

/ inputs: Valeurs datetime, numeros de date serie ou entrees compatibles date.

== Argument de sortie

/ output: Un tableau double d annees calendaires.

== Description

Extrait les annees de valeurs de date et heure.

 year utilise datevec pour les dates numeriques et la propriete dependante Year pour les entrees datetime.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
t = datetime(2024, [1 12], [1 31])
year(t)

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
