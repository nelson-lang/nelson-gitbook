#import "nelson_help.typ": *

= rowfilter <parquet:rowfilter>

Creer une expression de filtre de lignes.

== Syntaxe

- #raw("rf = rowfilter(names)");
- #raw("rf = rowfilter(T)");
- #raw("rf = rowfilter(info)");

== Argument d'entrée

/ names: noms de variables specifies comme tableau de chaines ou cellule de vecteurs de caracteres.
/ T: une table ou timetable dont les noms de variables sont utilises par le filtre.
/ info: un objet #strong[nelson.io.parquet.ParquetInfo]; dont les noms de variables sont utilises par le filtre.

== Argument de sortie

/ rf: un objet #strong[nelson.io.RowFilter];.

== Description

#strong[rowfilter]; cree un objet filtre qui expose les noms de variables avec la notation par point.

 Utilisez les operateurs relationnels #strong[\>];, #strong[\>\=];, #strong[\<];, #strong[\<\=];, #strong[\=\=]; et #strong[\~\=]; pour creer des comparaisons. Utilisez les operateurs logiques #strong[&];, #strong[|]; et #strong[\~]; pour combiner les expressions.

 L'objet obtenu peut etre passe a #strong[parquetread]; ou #strong[parquetDatastore]; avec la paire nom-valeur #strong[RowFilter];. Il peut aussi etre applique directement a une table avec #strong[rf.apply(T)];.


== Exemples

``````matlab
T = table([1; 2; 3; 4], [10; 20; 30; 40], ...
  'VariableNames', {'Id', 'Value'});
rf = rowfilter(T);
R = (rf.Id >= 2 & rf.Value < 40).apply(T)
``````

``````matlab
filename = [tempdir(), 'doc_rowfilter.parquet'];
T = table([1; 2; 3; 4], [10; 20; 30; 40], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T);
info = parquetinfo(filename);
rf = rowfilter(info);
R = parquetread(filename, 'RowFilter', rf.Value >= 30)
``````


== Voir aussi

#nlink(<parquet:class_RowFilter>)[nelson.io.RowFilter];, #nlink(<parquet:parquetread>)[parquetread];, #nlink(<parquet:parquetDatastore>)[parquetDatastore];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
