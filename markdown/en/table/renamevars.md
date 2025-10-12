# renamevars

Rename variables in table.

## Syntax

- TB = renamevars(TA, varsNames, newNames)

## Input argument

- TA - Input table.
- varsNames - Variable names in input table: character vector, string array or cell array of character vectors.
- newNames - New names for variables: character vector, string array or cell array of character vectors.

## Output argument

- TB - Table object with variable names modified.

## Description

<p>
            TB = renamevars(TA, varsNames, newNames) renames the variables in the table TA as specified by varsNames and assigns them the new names provided in newNames.</p>

<p>You can also rename all the variables in a table by assigning new names to its VariableNames property using T.Properties.VariableNames = newNames.</p>

<p>In this case, newNames must be a string array or a cell array of character vectors.</p>

## Example

```matlab
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
% Convert the cell array to a table
T1 = cell2table(C);
T2 = renamevars(T1, {'C1', 'C2'}, {'Name', 'Age'})
T3 = cell2table(C);
T3.Properties.VariableNames = {'Name', 'Age', 'Married'};
T3
```

## See also

[table](../table/table.md), [removevars](../table/removevars.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.9.0   | initial version |

## Author

Allan CORNET
