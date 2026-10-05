#import "../nelson_help.typ": *

= isdatetime <time:5_query_date_time_arrays.isdatetime>

Teste si une entree est un tableau datetime.

== Syntaxe

- #raw("tf = isdatetime(A)");

== Argument d'entrée

/ inputs: Toute valeur Nelson.

== Argument de sortie

/ output: Un scalaire logique.

== Description

Teste si une entree est un tableau datetime.

 Utilisez isdatetime pour tester le type avant d appeler des fonctions propres a datetime comme datenum, dateshift, tzoffset ou isnat.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
isdatetime(datetime(2024,1,1))
isdatetime(seconds(1))

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
