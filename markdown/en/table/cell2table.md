# cell2table

Convert cell array to table.

## Syntax

- T = cell2table(C)

## Input argument

- C - 2-D cell array.

## Output argument

- T - Table object.

## Description

<p>
            T = cell2table(C) converts the contents of an m-by-n cell array C into an m-by-n table.</p>

<p>Each column of the input cell array becomes the data for a corresponding variable in the output table.</p>

<p>To generate variable names in the output table, cell2table appends the column numbers to the name of the input array.</p>

<p>If the input array does not have a name, cell2table assigns default variable names in the format "Var1", "Var2", ... , "VarN", where N is the number of columns in the cell array.</p>

## Example

```matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T = cell2table(C)
```

## See also

[table2cell](../table/table2cell.md), [table](../table/table.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.8.0   | initial version |

## Author

Allan CORNET
