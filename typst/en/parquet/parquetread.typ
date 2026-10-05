#import "nelson_help.typ": *

= parquetread <parquet:parquetread>

Read table data from a Parquet file.

== Syntax

- #raw("T = parquetread(filename)");
- #raw("T = parquetread(filename, Name, Value)");

== Input argument

/ filename: a string: Parquet file to read.
/ Name, Value: optional arguments specified as name-value pairs.

== Output argument

/ T: a table or timetable.

== Description

#strong[T \= parquetread(filename)]; reads a local Parquet file and returns its contents as a table.

 #strong[T \= parquetread(filename, Name, Value)]; customizes the read operation. Supported names are #strong[OutputType];, #strong[SelectedVariableNames];, #strong[RowTimes];, #strong[StartTime];, #strong[SampleRate];, #strong[TimeStep];, #strong[RowGroups];, #strong[RowFilter];, and #strong[VariableNamingRule];.

 #strong[OutputType]; can be #strong['table']; or #strong['timetable'];. When a timetable is requested, row times can be supplied with #strong[RowTimes];, generated from #strong[StartTime]; and #strong[SampleRate];, generated from #strong[StartTime]; and #strong[TimeStep];, or taken from the first file variable.

 #strong[SelectedVariableNames]; limits the returned variables. #strong[RowGroups]; limits the row groups read from the file. #strong[RowFilter]; accepts a #strong[nelson.io.RowFilter]; object and applies it to the returned table.


== Examples

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


== See also

#nlink(<parquet:parquetwrite>)[parquetwrite];, #nlink(<parquet:parquetinfo>)[parquetinfo];, #nlink(<parquet:rowfilter>)[rowfilter];, #nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
