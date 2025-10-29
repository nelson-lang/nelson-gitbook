# array2table

Convert homogeneous array to table.

## 📝 Syntax

- T = array2table(A)

## 📥 Input argument

- A - matrix: single, double, integer types, logical, char, string, struct, cell.

## 📤 Output argument

- T - Table object.

## 📄 Description

<b>T = array2table(A)</b> converts an m-by-n array <b>A</b> into an m-by-n table, where each column of <b>A</b> becomes a variable in the resulting table <b>T</b>.

By default, <b>array2table</b> uses the name of the input array, combined with the column number, to create variable names in the table. If these names are not valid identifiers, it assigns default names of the form <b>'Var1', 'Var2', ... , 'VarN'</b>, where <b>N</b> is the number of columns in <b>A</b>.

## 💡 Example

```matlab
A = magic(6);
T = array2table(A)
T = array2table(magic(6))
```

## 🔗 See also

[table2array](../table/table2array.md), [table](../table/table.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.8.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
