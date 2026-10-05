#import "../nelson_help.typ": *

= containsrange <table:8_timetables_events.containsrange>

Determiner si les temps de lignes contiennent une plage.

== Syntaxe

- #raw("[tf, tfRow] = containsrange(TT, timeSpec)");

== Argument d'entrée

/ TT: Timetable d'entree.
/ timeSpec: Specification de plage de temps.

== Argument de sortie

/ tf: Scalaire logique.
/ tfRow: Selecteur logique de lignes.

== Description

#strong[containsrange]; teste si les temps de lignes couvrent la plage de temps specifiee.


== Exemple

``````matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
containsrange(TT, seconds([1.5; 2.5]))

``````


== Voir aussi

#nlink(<table:8_timetables_events.withinrange>)[withinrange];, #nlink(<table:8_timetables_events.overlapsrange>)[overlapsrange];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
