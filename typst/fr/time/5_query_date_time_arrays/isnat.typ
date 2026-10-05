#import "../nelson_help.typ": *

= isnat <time:5_query_date_time_arrays.isnat>

Teste les elements datetime not-a-time.

== Syntaxe

- #raw("tf = isnat(t)");

== Argument d'entrée

/ inputs: Un tableau datetime.

== Argument de sortie

/ output: Un tableau logique avec true lorsque les dates serie datetime sont NaN.

== Description

Teste les elements datetime not-a-time.

 isnat rejette les entrees non datetime. C est le test de valeur manquante propre a datetime et il conserve la forme des donnees datetime.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
t = [datetime(2024,1,1), NaT]
isnat(t)

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
