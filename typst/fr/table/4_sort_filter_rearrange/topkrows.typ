#import "../nelson_help.typ": *

= topkrows <table:4_sort_filter_rearrange.topkrows>

Renvoyer les premieres lignes d'une table ou timetable.

== Syntaxe

- #raw("B = topkrows(A, k)");
- #raw("[B, I] = topkrows(A, k, vars)");

== Argument d'entrée

/ A: Table ou timetable d'entree.
/ k: Nombre de lignes.

== Argument de sortie

/ B: Table ou timetable de sortie.
/ I: Indices des lignes selectionnees.

== Description

#strong[topkrows]; renvoie les #strong[k]; premieres lignes apres tri par temps de lignes ou variables selectionnees.


== Exemple

``````matlab
TT = timetable(seconds([1; 2; 3]), [10; 30; 20], 'VariableNames', {'A'});
topkrows(TT, 2, 'A')

``````


== Voir aussi

#nlink(<table:1_create_convert_tables.timetable>)[timetable];, #nlink(<data_analysis:sort>)[sort];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
