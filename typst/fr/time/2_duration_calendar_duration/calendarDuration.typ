#import "../nelson_help.typ": *

= calendarDuration <time:2_duration_calendar_duration.calendarDuration>

Cree des durees calendaires avec composants mois, jours et temps.

== Syntaxe

- #raw("c = calendarDuration(y, mo, d)");
- #raw("c = calendarDuration(y, mo, d, h, mi, s)");
- #raw("c = calendarDuration(x)");

== Argument d'entrée

/ inputs: Annees calendaires, mois, jours et composants horaires optionnels, ou tableaux numeriques.

== Argument de sortie

/ output: Un tableau calendarDuration contenant mois, jours, secondes et format d affichage.

== Description

Cree des durees calendaires avec composants mois, jours et temps.

 Les durees calendaires conservent la semantique calendrier lors des additions avec datetime. Les calculs par mois bornent les jours a la fin du mois si necessaire.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
c = calendarDuration(0, 1, 3)
t = datetime(2024, 1, 31) + c

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
