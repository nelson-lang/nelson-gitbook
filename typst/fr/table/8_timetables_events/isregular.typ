#import "../nelson_help.typ": *

= isregular <table:8_timetables_events.isregular>

Determiner si les temps de lignes sont regulierement espaces.

== Syntaxe

- #raw("tf = isregular(TT)");

== Argument d'entrée

/ TT: Timetable d'entree.

== Argument de sortie

/ tf: Scalaire logique.

== Description

#strong[isregular]; renvoie vrai quand toutes les differences entre temps adjacents sont egales.


== Exemple

``````matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
isregular(TT)

``````


== Voir aussi

#nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
