#import "nelson_help.typ": *

= parquetwrite <parquet:parquetwrite>

Write a table to a Parquet file.

== Syntax

- #raw("parquetwrite(filename, T)");
- #raw("parquetwrite(filename, T, Name, Value)");

== Input argument

/ filename: a string: destination Parquet file.
/ T: a table or timetable.
/ Name, Value: optional arguments specified as name-value pairs.

== Description

#strong[parquetwrite(filename, T)]; writes the table or timetable #strong[T]; to a local Parquet file.

 Supported variable types include logical values, integer types, single and double precision floating point values, text, datetime values, duration values, nested tables, and homogeneous primitive cell vector columns.

 Unsupported variables such as complex arrays, sparse arrays, unsupported class objects, and unsupported nested cell shapes generate an error.

 Supported name-value pairs are #strong[VariableCompression];, #strong[VariableEncoding];, #strong[VariableNames];, #strong[RowGroupHeights];, and #strong[Version];.

 #strong[VariableCompression]; accepts values such as #strong['snappy'];, #strong['gzip'];, #strong['brotli'];, #strong['zstd'];, #strong['lz4'];, and #strong['uncompressed'];. #strong[VariableEncoding]; accepts #strong['auto'];, #strong['plain'];, or #strong['dictionary'];. #strong[Version]; accepts #strong['1.0'];, #strong['2.4'];, or #strong['2.6'];.


== Examples

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


== See also

#nlink(<parquet:parquetread>)[parquetread];, #nlink(<parquet:parquetinfo>)[parquetinfo];, #nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
