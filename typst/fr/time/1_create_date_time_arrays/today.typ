#import "../nelson_help.typ": *

= today <time:1_create_date_time_arrays.today>

Renvoie le numero de date serie du jour courant.

== Syntaxe

- #raw("t = today()");

== Argument d'entrée

/ inputs: Aucun argument d entree.

== Argument de sortie

/ output: Un numero de date serie scalaire sans fraction horaire.

== Description

Renvoie le numero de date serie du jour courant.

 today est equivalent a floor(now()) au moment de l appel.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
t = today()
t == floor(t)

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
