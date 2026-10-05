#import "nelson_help.typ": *

= nelson.io.parquet.ParquetInfo <parquet:class_ParquetInfo>

Metadata object returned by parquetinfo.

== Syntax

- #raw("info = parquetinfo(filename)");

== Input argument

/ filename: a string: Parquet file to inspect.

== Output argument

/ info: a #strong[nelson.io.parquet.ParquetInfo]; object.

== Description

#strong[nelson.io.parquet.ParquetInfo]; stores metadata returned by #strong[parquetinfo];.

 Properties are #strong[Filename];, #strong[FileSize];, #strong[NumRows];, #strong[NumVariables];, #strong[NumRowGroups];, #strong[RowGroups];, #strong[Variables];, #strong[CreatedBy];, and dependent property #strong[VariableNames];.

 #strong[RowGroups]; is a table with row group metadata. #strong[Variables]; is a structure with variable names, Parquet types, and compression information.


== Example

``````matlab
filename = [tempdir(), 'doc_ParquetInfo.parquet'];
T = table(int32([1; 2; 3]), [10; 20; 30], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T);
info = parquetinfo(filename);
class(info)
info.Filename
info.VariableNames
``````


== See also

#nlink(<parquet:parquetinfo>)[parquetinfo];, #nlink(<parquet:parquetread>)[parquetread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
