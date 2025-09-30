# issorted

Determine if array is sorted.

## Syntax

- tf = issorted(A)
- tf = issorted(A, dim)
- tf = issorted(..., direction)
- tf = issorted(A, 'rows')

## Input argument

- A - an nelson's variable (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).
- dim - Dimension to operate along: positive integer scalar.
- direction - Sorting direction: 'ascend' (default) or 'descend'.
- 'rows' - returns true when the elements of the first column of a matrix are sorted.

## Output argument

- tf - a logical: true if array is sorted.

## Description

<p>
            <b>tf = issorted(A)</b> returns true if the elements of <b>A</b> are sorted in ascending order, and false otherwise.</p>

## Example

```matlab
x = [1 2 3 4];
issorted(x) % returns true
x = [1 3 2 4];
issorted(x) % returns false

% Check if a matrix is sorted by rows
A = [1 2 3; 4 5 6; 7 8 9];
issorted(A, 'rows') % returns true
A = [1 2 3; 7 8 9; 4 5 6];
issorted(A, 'rows') % returns false
```

## See also

[sort](../data_analysis/sort.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
