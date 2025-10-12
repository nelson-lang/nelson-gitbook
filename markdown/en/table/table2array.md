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
            A = table2array(T) converts the input table T into a homogeneous array A, where the variables in T become the columns of A.</p>

<p>The output A does not retain the table properties from T.Properties.</p>

<p>If T is a table with row names, these row names will not be included in A.</p>

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
