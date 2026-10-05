#import "../nelson_help.typ": *

= sortrows <table:4_sort_filter_rearrange.sortrows>

Trier les lignes d'une table ou d'une timetable.

== Syntaxe

- #raw("B = sortrows(A)");
- #raw("[B, I] = sortrows(A, vars, direction)");

== Argument d'entrée

/ A: Table ou timetable d'entree.
/ vars: Variables ou dimension des temps utilisees pour le tri.
/ direction: Sens du tri : 'ascend' (par defaut) ou 'descend', ou un tableau de cellules ou de chaines avec un sens par variable de tri.

== Argument de sortie

/ B: Table ou timetable triee.
/ I: Indices de tri.

== Description

#strong[sortrows]; trie les lignes d'une table selon les variables selectionnees, ou les lignes d'une timetable par temps de lignes ou variables selectionnees.

Les lignes sont comparees variable apres variable. Chaque variable est triee dans l'ordre de son propre type (numerique, logique, texte, categorical, datetime, duration) ; une variable a plusieurs colonnes est comparee colonne par colonne. Les valeurs manquantes sont placees en dernier en ordre croissant comme decroissant. Les egalites conservent leur ordre d'origine.


== Exemple

``````matlab
TT = timetable(seconds([2; 1]), [20; 10], 'VariableNames', {'A'});
sortrows(TT)
T = table([10; 9; 2], {'a'; 'b'; 'c'});
[B, I] = sortrows(T, {'Var1', 'Var2'}, {'descend', 'ascend'})

``````


== Voir aussi

#nlink(<table:8_timetables_events.issortedrows>)[issortedrows];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
