# height

Number of table rows

## Syntax

- H = height(T)

## Input argument

- T - Input array (table or other).

## Output argument

- H - a integer value: Number of table rows in Table or size(T, 1).

## Description

<p>
            H = height(T) returns the number of rows in the table T.</p>

<p>The function height(T) is equivalent to size(T, 1), which also provides the number of rows in the table.</p>

## Example

```matlab
T = table();
height(T)
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
T = cell2table(C);
height(T)

```

## See also

[width](../table/width.md), [size](../elementary_functions/size.md), [table](../table/table.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.8.0   | initial version |

## Author

Allan CORNET
