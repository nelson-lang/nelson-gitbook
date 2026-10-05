#import "../nelson_help.typ": *

= calmonths <time:2_duration_calendar_duration.calmonths>

Cree des durees calendaires contenant des mois calendaires.

== Syntaxe

- #raw("c = calmonths(x)");

== Argument d'entrée

/ inputs: Nombres numeriques de mois.

== Argument de sortie

/ output: Un tableau calendarDuration avec composants mois.

== Description

Cree des durees calendaires contenant des mois calendaires.

 L arithmetique par mois gere les longueurs de mois variables et borne au dernier jour du mois destination si necessaire.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
datetime(2024, 1, 31) + calmonths(1)

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
