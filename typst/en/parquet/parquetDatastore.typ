#import "nelson_help.typ": *

= parquetDatastore <parquet:parquetDatastore>

Create a datastore for one or more Parquet files.

== Syntax

- #raw("pds = parquetDatastore(location)");
- #raw("pds = parquetDatastore(location, Name, Value)");

== Input argument

/ location: a filename, folder name, wildcard pattern, string array, or cell array of character vectors.
/ Name, Value: optional arguments specified as name-value pairs.

== Output argument

/ pds: a #strong[nelson.io.datastore.ParquetDatastore]; object.

== Description

#strong[pds \= parquetDatastore(location)]; creates a datastore that reads local Parquet files from the specified location.

 When #strong[location]; is a folder, files ending with #strong[.parquet]; in that folder are selected. Wildcard patterns can be used to select multiple files.

 Supported name-value pairs are #strong[ReadSize];, #strong[SelectedVariableNames];, #strong[OutputType];, #strong[RowTimes];, #strong[RowFilter];, and #strong[VariableNamingRule];.

 The datastore reads one file at a time. Use #strong[hasdata];, #strong[read];, #strong[readall];, #strong[preview];, and #strong[reset]; to navigate the data.


== Examples

``````matlab
folder = tempdir();
file1 = [folder, 'doc_parquet_ds_1.parquet'];
file2 = [folder, 'doc_parquet_ds_2.parquet'];
parquetwrite(file1, table([1; 2], [10; 20], 'VariableNames', {'Id', 'Value'}));
parquetwrite(file2, table([3; 4], [30; 40], 'VariableNames', {'Id', 'Value'}));
pds = parquetDatastore([folder, 'doc_parquet_ds_*.parquet']);
pds.VariableNames
T = readall(pds)
``````

``````matlab
folder = tempdir();
file1 = [folder, 'doc_parquet_ds_filter_1.parquet'];
file2 = [folder, 'doc_parquet_ds_filter_2.parquet'];
parquetwrite(file1, table([1; 2], [10; 20], 'VariableNames', {'Id', 'Value'}));
parquetwrite(file2, table([3; 4], [30; 40], 'VariableNames', {'Id', 'Value'}));
rf = rowfilter({'Id', 'Value'});
pds = parquetDatastore([folder, 'doc_parquet_ds_filter_*.parquet'], ...
  'SelectedVariableNames', {'Id', 'Value'}, 'RowFilter', rf.Value > 15);
T = readall(pds)
``````


== See also

#nlink(<parquet:class_ParquetDatastore>)[nelson.io.datastore.ParquetDatastore];, #nlink(<parquet:parquetread>)[parquetread];, #nlink(<parquet:rowfilter>)[rowfilter];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
