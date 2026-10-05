#import "../nelson_help.typ": *

= caldiff <time:4_date_arithmetic_ranges.caldiff>

Renvoie les differences calendaires entre valeurs datetime adjacentes.

== Syntaxe

- #raw("c = caldiff(t)");
- #raw("c = caldiff(t, components)");
- #raw("c = caldiff(t, components, dim)");

== Argument d'entrée

/ inputs: Un tableau datetime, un selecteur optionnel de composants et une dimension optionnelle.

== Argument de sortie

/ output: Un tableau calendarDuration avec un element de moins selon la dimension choisie.

== Description

Renvoie les differences calendaires entre valeurs datetime adjacentes.

 caldiff calcule les differences adjacentes par paires en deleguant chaque intervalle a between.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Exemple

Utilisation de base.

``````matlab
t = [datetime(2024,1,1), datetime(2024,2,1), datetime(2024,4,1)]
c = caldiff(t, 'months')
split(c, 'months')

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
