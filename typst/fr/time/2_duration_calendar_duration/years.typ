#import "../nelson_help.typ": *

= years <time:2_duration_calendar_duration.years>

Cree des durees depuis des annees ou convertit des durees en annees.

== Syntaxe

- #raw("d = years(x)");
- #raw("x = years(d)");

== Argument d'entrée

/ inputs: Nombres d annees numeriques ou tableaux duration.

== Argument de sortie

/ output: Un tableau duration pour une entree numerique, ou des nombres d annees double pour une entree duration.

== Description

Cree des durees depuis des annees ou convertit des durees en annees.

 Une annee vaut 365.2425 jours pour la conversion en temps ecoule. Pour l arithmetique calendaire par annees, utilisez calyears.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
d = years([1 2])
seconds(d)
years(d)

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
