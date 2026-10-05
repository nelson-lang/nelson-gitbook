#import "../nelson_help.typ": *

= istimetable <table:3_summary_information.istimetable>

Determiner si l'entree est une timetable.

== Syntaxe

- #raw("tf = istimetable(A)");

== Argument d'entrée

/ A: Tableau d'entree.

== Argument de sortie

/ tf: Scalaire logique.

== Description

#strong[istimetable(A)]; renvoie vrai quand #strong[A]; est une timetable.


== Exemple

``````matlab
t = datetime(2024, 1, 1) + days(0:1)';
TT = timetable(t, [1; 2]);
istimetable(TT)
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.timetable>)[timetable];, #nlink(<table:3_summary_information.istabular>)[istabular];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
