# Read/Write table to files

## 📄 Description

Nelson provides extensive capabilities for reading and writing tables to files, supporting both text-based and binary storage formats to meet different data management needs.

Text files (.csv, .txt, etc.):

- writetable() exports tables to delimited text files with customizable separators
- readtable() imports tables from delimited text files with automatic format detection
- Text files preserve variable names and data in human-readable format

Binary file:

- Nelson HDF5 format (.nh5):

- Efficient binary storage using HDF5 format
- Preserves all table metadata and data types
- Use save -nh5 and load commands

Binary format is recommended for preserving exact numeric precision and working with large datasets.

## 💡 Examples

Read/Write table to .nh5 file

```matlab
% Create a sample table with sensor data
T = table([1.5; -2.3; 4.7], [0.5; 1.1; -0.7], [-1; 2; 3], 'VariableNames', {'Voltage', 'Current', 'Resistance'});
R = T;
filename = [tempdir(), 'table_example.nh5'];
save(filename, '-nh5', 'T');
clear T
load(filename, 'T');
assert(isequal(T, R));
T

```

Read/Write table to text file

```matlab
% Create a sample table with sensor data
T = table([1.5; -2.3; 4.7], [0.5; 1.1; -0.7], [-1; 2; 3], 'VariableNames', {'Voltage', 'Current', 'Resistance'});
filename = [tempdir(), 'table_example.csv'];
writetable(T, filename);
T2 = readtable(filename);

```

## 🔗 See also

[writetable](../spreadsheet/writetable.md), [readtable](../spreadsheet/readtable.md), [load](../stream_manager/load.md), [save](../stream_manager/save.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.10.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
