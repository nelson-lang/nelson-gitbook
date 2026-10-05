#import "../nelson_help.typ": *

= calweeks <time:2_duration_calendar_duration.calweeks>

Cree des durees calendaires contenant des semaines entieres.

== Syntaxe

- #raw("c = calweeks(x)");

== Argument d'entrée

/ inputs: Nombres numeriques de semaines.

== Argument de sortie

/ output: Un tableau calendarDuration dont les semaines sont stockees comme sept jours calendaires.

== Description

Cree des durees calendaires contenant des semaines entieres.

 calweeks stocke les semaines dans le composant jours de calendarDuration. C est utile pour une arithmetique de dates qui doit rester en duree calendaire.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
datetime(2024, 1, 1) + calweeks(2)

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
