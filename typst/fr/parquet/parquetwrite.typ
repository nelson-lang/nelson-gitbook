#import "nelson_help.typ": *

= parquetwrite <parquet:parquetwrite>

Ecrire une table dans un fichier Parquet.

== Syntaxe

- #raw("parquetwrite(filename, T)");
- #raw("parquetwrite(filename, T, Name, Value)");

== Argument d'entrée

/ filename: une chaine : fichier Parquet de destination.
/ T: une table ou une timetable.
/ Name, Value: arguments optionnels specifies sous forme de paires nom-valeur.

== Description

#strong[parquetwrite(filename, T)]; ecrit la table ou timetable #strong[T]; dans un fichier Parquet local.

 Les types de variables pris en charge incluent les valeurs logiques, les types entiers, les nombres flottants simple et double precision, le texte, les valeurs datetime, les durees, les tables imbriquees et les colonnes de cellules homogenes de vecteurs primitifs.

 Les variables non prises en charge, comme les tableaux complexes, les tableaux sparse, les objets de classe non pris en charge et certaines formes imbriquees de cellules, generent une erreur.

 Les paires nom-valeur prises en charge sont #strong[VariableCompression];, #strong[VariableEncoding];, #strong[VariableNames];, #strong[RowGroupHeights]; et #strong[Version];.

 #strong[VariableCompression]; accepte des valeurs comme #strong['snappy'];, #strong['gzip'];, #strong['brotli'];, #strong['zstd'];, #strong['lz4']; et #strong['uncompressed'];. #strong[VariableEncoding]; accepte #strong['auto'];, #strong['plain']; ou #strong['dictionary'];. #strong[Version]; accepte #strong['1.0'];, #strong['2.4']; ou #strong['2.6'];.


== Exemples

``````matlab
filename = [tempdir(), 'doc_parquetwrite.parquet'];
T = table(int32([1; 2; 3]), single([1.5; 2.5; 3.5]), logical([true; false; true]), ...
  ["A"; "B"; "C"], 'VariableNames', {'Id', 'Value', 'Flag', 'Name'});
parquetwrite(filename, T);
R = parquetread(filename)
``````

``````matlab
filename = [tempdir(), 'doc_parquetwrite_rowgroups.parquet'];
T = table((1:6)', [10; 20; 30; 40; 50; 60], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T, 'RowGroupHeights', 2, 'VariableCompression', 'gzip');
info = parquetinfo(filename);
info.NumRowGroups
``````

``````matlab
filename = [tempdir(), 'doc_parquetwrite_nested.parquet'];
Nested = table(int16([10; 20; 30]), [1.5; 2.5; 3.5], 'VariableNames', {'Code', 'Value'});
T = table((1:3)', Nested, 'VariableNames', {'Id', 'Nested'});
parquetwrite(filename, T);
R = parquetread(filename);
R.Nested
``````


== Voir aussi

#nlink(<parquet:parquetread>)[parquetread];, #nlink(<parquet:parquetinfo>)[parquetinfo];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
