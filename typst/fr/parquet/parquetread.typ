#import "nelson_help.typ": *

= parquetread <parquet:parquetread>

Lire des donnees de table depuis un fichier Parquet.

== Syntaxe

- #raw("T = parquetread(filename)");
- #raw("T = parquetread(filename, Name, Value)");

== Argument d'entrée

/ filename: une chaine : fichier Parquet a lire.
/ Name, Value: arguments optionnels specifies sous forme de paires nom-valeur.

== Argument de sortie

/ T: une table ou une timetable.

== Description

#strong[T \= parquetread(filename)]; lit un fichier Parquet local et retourne son contenu sous forme de table.

 #strong[T \= parquetread(filename, Name, Value)]; personnalise la lecture. Les noms pris en charge sont #strong[OutputType];, #strong[SelectedVariableNames];, #strong[RowTimes];, #strong[StartTime];, #strong[SampleRate];, #strong[TimeStep];, #strong[RowGroups];, #strong[RowFilter]; et #strong[VariableNamingRule];.

 #strong[OutputType]; peut valoir #strong['table']; ou #strong['timetable'];. Pour creer une timetable, les temps de lignes peuvent etre fournis par #strong[RowTimes];, generes avec #strong[StartTime]; et #strong[SampleRate];, generes avec #strong[StartTime]; et #strong[TimeStep];, ou pris depuis la premiere variable du fichier.

 #strong[SelectedVariableNames]; limite les variables retournees. #strong[RowGroups]; limite les groupes de lignes lus. #strong[RowFilter]; accepte un objet #strong[nelson.io.RowFilter]; et l'applique a la table retournee.


== Exemples

``````matlab
filename = [tempdir(), 'doc_parquetread.parquet'];
T = table(int32([1; 2; 3]), [10.5; 20.5; 30.5], ["low"; "mid"; "high"], ...
  'VariableNames', {'Id', 'Value', 'Label'});
parquetwrite(filename, T);
R = parquetread(filename)
``````

``````matlab
filename = [tempdir(), 'doc_parquetread_selected.parquet'];
T = table(int32([1; 2; 3; 4]), [10; 20; 30; 40], logical([true; false; true; false]), ...
  'VariableNames', {'Id', 'Value', 'Flag'});
parquetwrite(filename, T);
R = parquetread(filename, 'SelectedVariableNames', {'Id', 'Flag'})
``````

``````matlab
filename = [tempdir(), 'doc_parquetread_filter.parquet'];
T = table(int32([1; 2; 3; 4]), [10; 20; 30; 40], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T);
rf = rowfilter({'Id', 'Value'});
R = parquetread(filename, 'RowFilter', rf.Value >= 30)
``````

``````matlab
filename = [tempdir(), 'doc_parquetread_timetable.parquet'];
T = table([100; 200; 300], 'VariableNames', {'Signal'});
parquetwrite(filename, T);
TT = parquetread(filename, 'OutputType', 'timetable', ...
  'StartTime', datetime(2026, 1, 1), 'TimeStep', seconds(5))
``````


== Voir aussi

#nlink(<parquet:parquetwrite>)[parquetwrite];, #nlink(<parquet:parquetinfo>)[parquetinfo];, #nlink(<parquet:rowfilter>)[rowfilter];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
