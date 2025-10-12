# sort

Sort array elements by quick sort algorithm.

## Syntax

- B = sort(A)
- B = sort(A, dim)
- B = sort(..., direction)
- B = sort(..., name, value)
- [B, I] = sort(...)

## Input argument

- A - an nelson's variable (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).
- dim - Dimension to operate along: positive integer scalar.
- direction - Sorting direction: 'ascend' (default) or 'descend'.
- name, value - name-value pair arguments.

## Output argument

- B - sorted array.
- I - sort index.

## Description

<p>
            sort implements quick sort algorithm.</p>

<p>name-value pair arguments:</p>

<p>
                'MissingPlacement' - Placement of missing values: 'auto' (default), 'first', 'last'.</p>

<p>
                    'ComparisonMethod' - Element comparison method: 'auto' (default), 'real', 'abs'.</p>

## Bibliography

Quick sort algorithm from Bentley and McIlroy's "Engineering a Sort Function". Software - Practice and Experience

## Used function(s)

qsort (stl)

## Examples

ComparisonMethod

```matlab
A = [10+20i 30+i 10i 0 -10i];
B = sort(A,'ComparisonMethod', 'auto')
B = sort(A, 'ComparisonMethod', 'real')
B = sort(A, 'ComparisonMethod', 'abs')

```

MissingPlacement

```matlab
A = [NaN 3 6 0 NaN];
[B, I] = sort(A, 'MissingPlacement', 'auto')
[B, I] = sort(A, 'MissingPlacement', 'first')
[B, I] = sort(A, 'MissingPlacement', 'last')

```

## See also

[issorted](../data_analysis/issorted.md), [unique](../data_analysis/unique.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
