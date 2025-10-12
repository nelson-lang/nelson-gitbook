# table2cell

Convert table to cell array

## Syntax

- S = table2cell(T)
- S = table2cell(T, "ToScalar", true)

## Input argument

- T - a table object

## Output argument

- C - Cell array.

## Description

<p>
            C = table2cell(T) converts the table T into a cell array C, where each variable in T is transformed into a column of cells in C.</p>

<p>The output C does not include any properties from T.Properties.</p>

<p>If T contains row names, these will not be included in C.</p>

## Example

```matlab
S = ["Y";"Y";"N";"N";"N"];
A = [38;43;38;40;49];
B = [124 93;109 77; 125 83; 117 75; 122 80];
T = table(S, A, B, 'VariableNames',["Smoker" "Age" "BloodPressure"], 'RowNames',["Chang" "Brown" "Ruiz" "Lee" "Garcia"])
C = table2cell(T)
```

## See also

[cell2table](../table/cell2table.md), [table](../table/table.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.8.0   | initial version |

## Author

Allan CORNET
