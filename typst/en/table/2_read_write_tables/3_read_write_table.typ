#import "../nelson_help.typ": *

= Read\/Write table to files <table:2_read_write_tables.3_read_write_table>



== Description

Nelson reads and writes tables in text-based and binary file formats for common data exchange tasks.

 Text files (.csv, .txt, etc.):

 

- writetable() exports tables to delimited text files with customizable separators
- readtable() imports tables from delimited text files with automatic format detection
- Text files preserve variable names and data in human-readable format Binary file:

 

- Nelson HDF5 format (.nh5):

- Efficient binary storage using HDF5 format
- Preserves all table metadata and data types
- Use save -nh5 and load commands Binary format is recommended for preserving exact numeric precision and working with large datasets.

 Saved tables preserve the public #strong[T.Properties]; metadata. The internal table representation is not part of the file format contract.


== Examples

Read\/Write table to .nh5 file

``````matlab
% Create a sample table with sensor data
T = table([1.5; -2.3; 4.7], [0.5; 1.1; -0.7], [-1; 2; 3], 'VariableNames', {'Voltage', 'Current', 'Resistance'});
R = T;
filename = [tempdir(), 'table_example.nh5'];
save(filename, '-nh5', 'T');
clear T
load(filename, 'T');
assert(isequal(T, R));
T

``````

Read\/Write table to text file

``````matlab
% Create a sample table with sensor data
T = table([1.5; -2.3; 4.7], [0.5; 1.1; -0.7], [-1; 2; 3], 'VariableNames', {'Voltage', 'Current', 'Resistance'});
filename = [tempdir(), 'table_example.csv'];
writetable(T, filename);
T2 = readtable(filename);

``````


== See also

#nlink(<spreadsheet:writetable>)[writetable];, #nlink(<spreadsheet:readtable>)[readtable];, #nlink(<stream_manager:load>)[load];, #nlink(<stream_manager:save>)[save];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
)

// Author: Allan CORNET
