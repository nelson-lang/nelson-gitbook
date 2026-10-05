#import "../nelson_help.typ": *

= issortedrows <table:8_timetables_events.issortedrows>

Determiner si les lignes d'une timetable sont triees.

== Syntaxe

- #raw("tf = issortedrows(A)");

== Argument d'entrée

/ A: Timetable d'entree.

== Argument de sortie

/ tf: Scalaire logique.

== Description

#strong[issortedrows]; renvoie vrai quand les lignes d'une timetable sont triees par temps de lignes.


== Exemple

``````matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
issortedrows(TT)

``````


== Voir aussi

#nlink(<table:4_sort_filter_rearrange.sortrows>)[sortrows];, #nlink(<data_analysis:issorted>)[issorted];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
