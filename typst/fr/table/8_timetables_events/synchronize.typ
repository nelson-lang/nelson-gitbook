#import "../nelson_help.typ": *

= synchronize <table:8_timetables_events.synchronize>

Synchroniser des timetables sur des temps communs.

== Syntaxe

- #raw("TT = synchronize(TT1, TT2)");
- #raw("TT = synchronize(TT1, TT2, newTimeBasis, method)");
- #raw("TT = synchronize(TT1, TT2, newTimes, method)");
- #raw("TT = synchronize(TT1, TT2, 'regular', method, 'TimeStep', dt)");

== Argument d'entrée

/ TT1, TT2: Timetables d'entree.
/ newTimeBasis: 'union', 'intersection', 'first' ou 'last'.
/ method: Methode utilisee pour retimer chaque timetable en entree.

== Argument de sortie

/ TT: Timetable synchronisee.

== Description

#strong[synchronize]; combine des timetables et aligne leurs variables sur des temps de lignes communs.

 Les bases temporelles prises en charge incluent union, intersection, first, last, les grilles regulieres, les pas nommes et les vecteurs temporels explicites.

 La methode de retiming est transmise a #strong[retime];, y compris les methodes de remplissage, voisinage, interpolation et agregation.


== Exemple

``````matlab
t = datetime(2024, 1, 1) + days(0:1)';
TT1 = timetable(t, [1; 2], 'VariableNames', {'A'});
TT2 = timetable(t, [10; 20], 'VariableNames', {'B'});
TT = synchronize(TT1, TT2)
``````


== Voir aussi

#nlink(<table:8_timetables_events.retime>)[retime];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
