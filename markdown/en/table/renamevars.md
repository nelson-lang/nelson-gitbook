# renamevars

Rename variables in table.

## 📝 Syntax

- TB = renamevars(TA, varsNames, newNames)

## 📥 Input argument

- TA - Input table.
- varsNames - Variable names in input table: character vector, string array or cell array of character vectors.
- newNames - New names for variables: character vector, string array or cell array of character vectors.

## 📤 Output argument

- TB - Table object with variable names modified.

## 📄 Description

<b>TB = renamevars(TA, varsNames, newNames)</b> renames the variables in the table<b>TA</b> as specified by<b>varsNames</b> and assigns them the new names provided in<b>newNames</b>.

You can also rename all the variables in a table by assigning new names to its<b>VariableNames</b> property using<b>T.Properties.VariableNames = newNames</b>.

In this case,<b>newNames</b> must be a string array or a cell array of character vectors.

## 💡 Example

```matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T1 = cell2table(C);
T2 = renamevars(T1, {'C1', 'C2'}, {'Name', 'Age'})
T3 = cell2table(C);
T3.Properties.VariableNames = {'Name', 'Age', 'Married'};
T3
```

## 🔗 See also

[table](../table/table.md), [removevars](../table/removevars.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.9.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
