#import "nelson_help.typ": *

= nelson.io.datastore.ParquetDatastore <parquet:class_ParquetDatastore>

Datastore object for Parquet files.

== Syntax

- #raw("pds = parquetDatastore(location)");
- #raw("[T, info] = read(pds)");
- #raw("T = readall(pds)");
- #raw("T = preview(pds)");
- #raw("tf = hasdata(pds)");
- #raw("reset(pds)");

== Input argument

/ location: a filename, folder name, wildcard pattern, string array, or cell array of character vectors.
/ pds: a #strong[nelson.io.datastore.ParquetDatastore]; object.

== Output argument

/ T: a table or timetable.
/ info: a structure containing the current filename and file index.
/ tf: a logical value.

== Description

#strong[nelson.io.datastore.ParquetDatastore]; is created by #strong[parquetDatastore];.

 Properties are #strong[Files];, #strong[ReadSize];, #strong[SelectedVariableNames];, #strong[OutputType];, #strong[RowTimes];, #strong[RowFilter];, #strong[VariableNamingRule];, and dependent property #strong[VariableNames];.

 #strong[read]; returns the next file as a table and advances the datastore. #strong[readall]; concatenates all remaining files after resetting the datastore. #strong[preview]; reads the first rows of the first file. #strong[hasdata]; indicates whether more files can be read. #strong[reset]; moves the datastore back to the first file.


== Example

``````matlab
folder = tempdir();
file1 = [folder, 'doc_ParquetDatastore_1.parquet'];
file2 = [folder, 'doc_ParquetDatastore_2.parquet'];
parquetwrite(file1, table([1; 2], [10; 20], 'VariableNames', {'Id', 'Value'}));
parquetwrite(file2, table([3; 4], [30; 40], 'VariableNames', {'Id', 'Value'}));
pds = parquetDatastore([folder, 'doc_ParquetDatastore_*.parquet']);
hasdata(pds)
[T1, readInfo] = read(pds)
reset(pds);
T = readall(pds)
``````


== See also

#nlink(<parquet:parquetDatastore>)[parquetDatastore];, #nlink(<parquet:parquetread>)[parquetread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
