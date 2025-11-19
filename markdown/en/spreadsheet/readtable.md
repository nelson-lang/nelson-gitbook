# readtable

Create table from file.

## 📝 Syntax

- T = readtable(filename)
- T = readtable(filename, opts)

## 📥 Input argument

- filename - a string: filename source.
- opts - DelimitedTextImportOptions object

## 📤 Output argument

- T - a table.

## 📄 Description

<b>T = readtable(filename)</b> creates a table by importing column-oriented data from a text or spreadsheet file.

<b>T = readtable(filename, opts)</b> creates a table using the settings defined in the<b>opts</b> import options object. The import<b>options</b> object allows you to customize how<b>readtable</b> interprets the file, offering greater control, improved performance, and the ability to reuse the configuration compared to the default syntax.

## 💡 Examples

```matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; Weight = [70; 55; 80; 60]; T1 = table(Names, Age, Height, Weight); writetable(T1, [tempdir,'readtable_1.csv']) T2 = readtable([tempdir,'readtable_1.csv'])
```

```matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; Weight = [70; 55; 80; 60]; T = table(Names, Age, Height, Weight); writetable(T, [tempdir,'readtable_1.csv']) options = detectImportOptions([tempdir,'readtable_1.csv']); T1 = readtable([tempdir,'readtable_1.csv'], options) options.DataLines = [1 Inf] T2 = readtable([tempdir,'readtable_1.csv'], options)
```

## 🔗 See also

[writetable](../spreadsheet/writetable.md), [detectImportOptions](../spreadsheet/detectImportOptions.md), [readcell](../spreadsheet/readcell.md), [fileread](../stream_manager/fileread.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.10.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
