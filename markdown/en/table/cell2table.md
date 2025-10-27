# cell2table

Convert cell array to table.

## 📝 Syntax

- T = cell2table(C)

## 📥 Input argument

- C - 2-D cell array.

## 📤 Output argument

- T - Table object.

## 📄 Description

<b>T = cell2table(C)</b> converts the contents of an m-by-n cell array <b>C</b> into an m-by-n table.

Each column of the input cell array becomes the data for a corresponding variable in the output table.

To generate variable names in the output table, <b>cell2table</b> appends the column numbers to the name of the input array.

If the input array does not have a name, <b>cell2table</b> assigns default variable names in the format <b>"Var1", "Var2", ... , "VarN"</b>, where <b>N</b> is the number of columns in the cell array.

## 💡 Example

```matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T = cell2table(C)
```

## 🔗 See also

[table2cell](../table/table2cell.md), [table](../table/table.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.8.0   | initial version |

## 👤 Author

Allan CORNET
