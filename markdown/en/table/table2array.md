# table2array

Convert table to homogeneous array.

## Syntax

- A = table2array(T)

## Input argument

- T - table object.

## Output argument

- A - matrix: single, double, integer types, logical, char, string, struct, cell.

## Description

<p>
            <b>A = table2array(T)</b> converts the input table <b>T</b> into a homogeneous array <b>A</b>, where the variables in <b>T</b> become the columns of <b>A</b>.</p>
<p>The output <b>A</b> does not retain the table properties from <b>T.Properties</b>.</p>
<p>If <b>T</b> is a table with row names, these row names will not be included in <b>A</b>.</p>

## Example

```matlab
A = magic(6);
T = array2table(A);
A = table2array(T)
```

## See also

[array2table](../table/array2table.md), [table](../table/table.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.8.0   | initial version |

## Author

Allan CORNET
