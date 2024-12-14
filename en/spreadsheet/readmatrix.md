# readmatrix

Create matrix array from file.

## Syntax

- M = readmatrix(filename)
- M = readmatrix(filename, opts)
- M = readmatrix(filename, opts, 'OutputType', type)

## Input argument

- filename - a string: an existing filename source.
- opts - DelimitedTextImportOptions object
- type - a string: 'double', 'single', 'char', 'string', 'int8', 'int16', 'int32', 'int64', 'uint8', 'uint16', 'uint32', 'uint64'.

## Output argument

- M - a matrix.

## Description

  <p><b>M = readmatrix(filename)</b> creates a matrix array by importing column-oriented data from a text or spreadsheet file.</p>
  <p><b>M = readmatrix(filename, opts)</b> creates a matrix array using the settings defined in the <b>opts</b> import options object. The import <b>options</b> object allows you to customize how <b>readmatrix</b> interprets the file, offering greater control, improved performance, and the ability to reuse the configuration compared to the default syntax.</p>

## Examples

```matlab
filename = [tempdir,'readmatrix_1.csv'];
Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight);
writetable(T, filename)
M = readmatrix(filename)
```

```matlab
filename = [tempdir,'readmatrix_2.csv'];
M = magic(6);
writematrix(M, filename)
options = detectImportOptions(filename)
options.DataLines = [2 4];
M2 = readmatrix(filename, options, 'OutputType', 'int64')
M3 = readmatrix(filename, options, 'OutputType', 'char')
```

## See also

[writematrix](writematrix.md), [detectImportOptions](detectImportOptions.md), [writetable](writetable.md), [readtable](readtable.md), [fileread](../stream_manager/fileread.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
