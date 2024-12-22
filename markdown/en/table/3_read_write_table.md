# Read/Write table to files

## Description

  <p>Nelson provides extensive capabilities for reading and writing tables to files, supporting both text-based and binary storage formats to meet different data management needs.</p>
  <p>Text files (.csv, .txt, etc.):</p>
  <ul>
    <li>writetable() exports tables to delimited text files with customizable separators</li>
    <li>readtable() imports tables from delimited text files with automatic format detection</li>
    <li>Text files preserve variable names and data in human-readable format</li>
  </ul>
  <p>Binary file:</p>
  <ul>
    <li>Nelson HDF5 format (.nh5):
      	<ul><li>Efficient binary storage using HDF5 format</li><li>Preserves all table metadata and data types</li><li>Use save -nh5 and load commands</li></ul>
    	</li>
  </ul>
  <p>Binary format is recommended for preserving exact numeric precision and working with large datasets.</p>

## Examples

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

## See also

[writetable](../spreadsheet/writetable.md), [readtable](../spreadsheet/readtable.md), [load](../stream_manager/load.md), [save](../stream_manager/save.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
