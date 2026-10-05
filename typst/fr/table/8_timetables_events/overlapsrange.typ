#import "../nelson_help.typ": *

= overlapsrange <table:8_timetables_events.overlapsrange>

Determiner si les temps de lignes chevauchent une plage.

== Syntaxe

- #raw("[tf, tfRow] = overlapsrange(TT, timeSpec)");

== Argument d'entrée

/ TT: Timetable d'entree.
/ timeSpec: Specification de plage de temps.

== Argument de sortie

/ tf: Scalaire logique.
/ tfRow: Selecteur logique de lignes.

== Description

#strong[overlapsrange]; teste si les temps de lignes chevauchent la plage de temps specifiee.


== Exemple

``````matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
overlapsrange(TT, seconds([2; 4]))

``````


== Voir aussi

#nlink(<table:8_timetables_events.withinrange>)[withinrange];, #nlink(<table:8_timetables_events.containsrange>)[containsrange];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
