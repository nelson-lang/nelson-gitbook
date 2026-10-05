#import "nelson_help.typ": *

= rowfilter <parquet:rowfilter>

Create a row filter expression.

== Syntax

- #raw("rf = rowfilter(names)");
- #raw("rf = rowfilter(T)");
- #raw("rf = rowfilter(info)");

== Input argument

/ names: variable names specified as a string array or cell array of character vectors.
/ T: a table or timetable whose variable names are used by the filter.
/ info: a #strong[nelson.io.parquet.ParquetInfo]; object whose variable names are used by the filter.

== Output argument

/ rf: a #strong[nelson.io.RowFilter]; object.

== Description

#strong[rowfilter]; creates a filter object that exposes variable names through dot notation.

 Use relational operators #strong[\>];, #strong[\>\=];, #strong[\<];, #strong[\<\=];, #strong[\=\=];, and #strong[\~\=]; to create comparisons. Use logical operators #strong[&];, #strong[|];, and #strong[\~]; to combine expressions.

 The resulting object can be passed to #strong[parquetread]; or #strong[parquetDatastore]; with the #strong[RowFilter]; name-value pair. It can also be applied directly to a table with #strong[rf.apply(T)];.


== Examples

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


== See also

#nlink(<parquet:class_RowFilter>)[nelson.io.RowFilter];, #nlink(<parquet:parquetread>)[parquetread];, #nlink(<parquet:parquetDatastore>)[parquetDatastore];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
