#import "../nelson_help.typ": *

= iscalendarduration <time:5_query_date_time_arrays.iscalendarduration>

Teste si une entree est un tableau calendarDuration.

== Syntaxe

- #raw("tf = iscalendarduration(A)");

== Argument d'entrée

/ inputs: Toute valeur Nelson.

== Argument de sortie

/ output: Un scalaire logique.

== Description

Teste si une entree est un tableau calendarDuration.

 Les durees calendaires representent des mois calendaires, jours et secondes. Ce predicat les distingue des tableaux duration de temps ecoule.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
iscalendarduration(calmonths(2))
iscalendarduration(days(2))

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
