# readcell

Create cell array from file.

## 📝 Syntax

- C = readcell(filename)
- C = readcell(filename, opts)

## 📥 Input argument

- filename - a string: filename source.
- opts - DelimitedTextImportOptions object

## 📤 Output argument

- C - a cell.

## 📄 Description

<b>C = readcell(filename)</b> creates a cell array by importing column-oriented data from a text or spreadsheet file.

<b>C = readcell(filename, opts)</b> creates a cell array using the settings defined in the <b>opts</b> import options object. The import <b>options</b> object allows you to customize how <b>readcell</b> interprets the file, offering greater control, improved performance, and the ability to reuse the configuration compared to the default syntax.

## 💡 Examples

```matlab

Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight);
writetable(T, [tempdir,'readcell_1.csv'])
C = readcell([tempdir,'readcell_1.csv'])

```

```matlab

Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight);
writetable(T, [tempdir,'readcell_1.csv'])
options = detectImportOptions([tempdir,'readcell_1.csv']);
C1 = readcell([tempdir,'readcell_1.csv'], options)
options.DataLines = [1 Inf]
C2 = readcell([tempdir,'readcell_1.csv'], options)

```

## 🔗 See also

[writecell](../spreadsheet/writecell.md), [detectImportOptions](../spreadsheet/detectImportOptions.md), [writetable](../spreadsheet/writetable.md), [readtable](../spreadsheet/readtable.md), [fileread](../stream_manager/fileread.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.10.0  | initial version |

## 👤 Author

Allan CORNET
