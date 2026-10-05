# cell2table

Convert cell array to table.

## 📝 Syntax

- T = cell2table(C)
- T = cell2table(C, Name, Value)

## 📥 Input argument

- C - 2-D cell array.
- Name, Value - Name-value arguments, in any order: 'VariableNames' (string array or cell array of character vectors, one name per column of C), 'RowNames' (string array or cell array of nonempty names, one name per row of C), 'DimensionNames' (two names). Names are case-insensitive.

## 📤 Output argument

- T - Table object.

## 📄 Description


<b>T = cell2table(C)</b> converts the contents of an m-by-n cell array<b>C</b> into an m-by-n table. 

Each column of the input cell array becomes the data for a corresponding variable in the output table. 

To generate variable names in the output table,<b>cell2table</b> appends the column numbers to the name of the input array. 

If the input array does not have a name,<b>cell2table</b> assigns default variable names in the format<b>
        "Var1", "Var2", ... , "VarN"
      </b>, where <b>N</b> is the number of columns in the cell array. 

<b>T = cell2table(C, Name, Value)</b> creates the table with the name-value arguments <b>VariableNames</b>, <b>RowNames</b> and <b>DimensionNames</b>. These values are validated like the ones given to <b>table</b>; any other name raises an error.

## 💡 Examples



```matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T = cell2table(C)
```
Variable and row names

```matlab
C = {'John', 28; 'Alice', 35};
T = cell2table(C, 'VariableNames', {'Name', 'Age'}, 'RowNames', {'r1', 'r2'})
```


## 🔗 See also

[table2cell](../../table/1_create_convert_tables/table2cell.md), [table](../../table/1_create_convert_tables/table.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.8.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
