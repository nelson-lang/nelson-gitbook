#import "../nelson_help.typ": *

= withinrange <table:8_timetables_events.withinrange>

Trouver les lignes d'une timetable dans une plage de temps.

== Syntaxe

- #raw("[tf, tfRow] = withinrange(TT, timeSpec)");

== Argument d'entrée

/ TT: Timetable d'entree.
/ timeSpec: Specification de plage de temps.

== Argument de sortie

/ tf: Scalaire logique.
/ tfRow: Selecteur logique de lignes.

== Description

#strong[withinrange]; teste si les temps de lignes sont dans une plage de temps specifiee.


== Exemple

``````matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
withinrange(TT, seconds([1; 2]))

``````


== Voir aussi

#nlink(<table:8_timetables_events.containsrange>)[containsrange];, #nlink(<table:8_timetables_events.overlapsrange>)[overlapsrange];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
