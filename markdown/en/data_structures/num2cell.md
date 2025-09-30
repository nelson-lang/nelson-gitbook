# num2cell

Convert array to cell array with consistently sized cells.

## Syntax

- C = num2cell(A)
- C = num2cell(A, dim)

## Input argument

- A - any type of multidimensional array.
- dim - positive integer value or positive vector of integers.

## Output argument

- C - a cell array.

## Description

<p>
            <b>num2cell</b> function converts a numeric array into a cell array, where each element of the numeric array is placed in its own cell in the resulting cell array.</p>
<p>If <b>A</b> is a character array, num2cell will convert each row of the array into a separate cell in the resulting cell array.</p>

## Example

```matlab
A = [1 2; 3 4; 5 6];
C = num2cell(A)
C = num2cell(A, 1)
C = num2cell(A, 2)

```

## See also

[cell](../data_structures/cell.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
