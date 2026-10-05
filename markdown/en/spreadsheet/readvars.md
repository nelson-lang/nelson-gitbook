# readvars

Create variables by reading column-oriented data from a file.

## 📝 Syntax

- [Var1, Var2, ..., VarN] = readvars(filename)
- [Var1, Var2, ..., VarN] = readvars(filename, opts)

## 📥 Input argument

- filename - a string: an existing filename source.
- opts - nelson.io.text.DelimitedTextImportOptions object

## 📤 Output argument

- Var1, Var2, ..., VarN - the columns of the file, each returned as a separate variable.

## 📄 Description


<b>[Var1, Var2, ..., VarN] = readvars(filename)</b> creates variables by importing column-oriented data from a text or spreadsheet file. 

Each column of the file is returned as a separate output variable. Text columns are returned as a cell array of character vectors and numeric columns as a column vector of type <b>double</b>, following the same conventions as <b>readtable</b>. Pass the <b>'TextType'</b> name-value option with the value <b>'string'</b> to return text columns as a <b>string</b> array instead. 

Name-value options accepted by <b>readtable</b>, such as <b>'Range'</b>, are forwarded. Using <b>'Range'</b> restricts the columns and rows returned as variables. 

When fewer output variables are requested than the number of columns in the file, only the first columns are returned. Requesting more output variables than there are columns raises an error. 

<b>[Var1, Var2, ..., VarN] = readvars(filename, opts)</b> uses the settings defined in the <b>opts</b> import options object. Any additional arguments are forwarded to <b>readtable</b>.

## 💡 Example



```matlab
filename = [tempdir, 'readvars_1.csv']; Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; T = table(Names, Age, Height); writetable(T, filename) [N, A, H] = readvars(filename)
```


## 🔗 See also

[readtable](../spreadsheet/readtable.md), [readmatrix](../spreadsheet/readmatrix.md), [readcell](../spreadsheet/readcell.md), [detectImportOptions](../spreadsheet/detectImportOptions.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
