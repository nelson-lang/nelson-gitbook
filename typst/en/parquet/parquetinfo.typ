#import "nelson_help.typ": *

= parquetinfo <parquet:parquetinfo>

Return metadata for a Parquet file.

== Syntax

- #raw("info = parquetinfo(filename)");

== Input argument

/ filename: a string: Parquet file to inspect.

== Output argument

/ info: a #strong[nelson.io.parquet.ParquetInfo]; object.

== Description

#strong[info \= parquetinfo(filename)]; reads Parquet metadata without importing the full table data.

 The returned object exposes file-level metadata such as filename, file size, number of rows, number of variables, number of row groups, row group sizes, variable names, variable types, compression, and the writer description when available.


== Example

``````matlab
filename = [tempdir(), 'doc_parquetinfo.parquet'];
T = table(int32([1; 2; 3]), [10; 20; 30], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T, 'RowGroupHeights', 2);
info = parquetinfo(filename);
info.NumRows
info.VariableNames
info.RowGroups
``````


== See also

#nlink(<parquet:class_ParquetInfo>)[nelson.io.parquet.ParquetInfo];, #nlink(<parquet:parquetread>)[parquetread];, #nlink(<parquet:parquetwrite>)[parquetwrite];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
