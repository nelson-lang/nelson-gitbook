# removevars

Delete variables from table.

## 📝 Syntax

- TB = removevars(TA, varsNames)

## 📥 Input argument

- TA - Input table.
- varsNames - Variable names in input table to remove: character vector, string array or cell array of character vectors.

## 📤 Output argument

- TB - Table object modified.

## 📄 Description

<b>TB = removevars(TA, varsNames)</b> removes the variables specified by<b>varsNames</b> from the table<b>TA</b> and stores the remaining variables in <b>T2</b>.

You can specify the variables by name, position, or using logical indices.

You can also remove variables from a table using<b>T(:, varsNames) = []</b>.

## 💡 Example

```matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T1 = cell2table(C)
T2 = removevars(T1, 'C2')

```

## 🔗 See also

[table](../table/table.md), [renamevars](../table/renamevars.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.9.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
