#import "nelson_help.typ": *

= nelson.io.RowFilter <parquet:class_RowFilter>

Objet qui stocke une expression de filtre de lignes.

== Syntaxe

- #raw("rf = rowfilter(names)");
- #raw("expr = rf.VariableName operator value");
- #raw("T = expr.apply(T)");

== Argument d'entrée

/ names: noms de variables specifies comme tableau de chaines ou cellule de vecteurs de caracteres.
/ T: une table ou timetable.

== Argument de sortie

/ rf: un objet #strong[nelson.io.RowFilter];.
/ expr: un objet #strong[nelson.io.RowFilter]; contenant une expression de filtre.

== Description

#strong[nelson.io.RowFilter]; stocke les noms de variables et l'expression utilisee pour selectionner des lignes.

 Les noms de variables sont accessibles par notation par point. Les operateurs relationnels et logiques creent une expression de filtre. L'expression est evaluee quand #strong[apply]; est appele ou quand l'objet est utilise comme argument #strong[RowFilter]; pour les fonctions de lecture Parquet.

 La methode #strong[variables]; retourne les noms references par l'expression.


== Exemple

``````matlab
T = table([1; 2; 3; 4], [10; 20; 30; 40], ...
  'VariableNames', {'Id', 'Value'});
rf = rowfilter({'Id', 'Value'});
expr = rf.Id > 1 & rf.Value <= 30;
expr.variables()
R = expr.apply(T)
``````


== Voir aussi

#nlink(<parquet:rowfilter>)[rowfilter];, #nlink(<parquet:parquetread>)[parquetread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
