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
            <b>C = table2cell(T)</b> converts the table <b>T</b> into a cell array <b>C</b>, where each variable in <b>T</b> is transformed into a column of cells in <b>C</b>.</p>
<p>The output <b>C</b> does not include any properties from <b>T.Properties</b>.</p>
<p>If <b>T</b> contains row names, these will not be included in <b>C</b>.</p>

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
