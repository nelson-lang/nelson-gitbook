# unique

Unique values.

## Syntax

- C = unique(A)
- C = unique(A, 'rows')
- [C, ia, ic] = unique(...)

## Input argument

- A - an nelson's variable (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).

## Output argument

- C - Unique data of A.
- ia - Index to A: column vector.
- ic - Index to C: column vector.

## Description

<p>
            C = unique(A) returns the unique elements of array A in sorted order.</p>

<p>
                C = unique(A, 'rows') considers each row of A as a unique entity and returns the unique rows in sorted order.</p>

<p>Note that the 'rows' option does not support cell arrays.</p>

<p>
                    [C, ia, ic] = unique(...) extends any of the previous syntaxes to also return index vectors ia and ic.</p>

<p>For a vector A, the relationships are C = A(ia) and A = C(ic).</p>

<p>For a matrix or array A, the relationships are C = A(ia) and A(:) = C(ic).</p>

<p>If the 'rows' option is used, the relationships are C = A(ia, :) and A = C(ic, :).</p>

## Used function(s)

std::sort, std::unique (stl)

## Examples

```matlab
A = [10+20i 30+i 10i 0 -10i];
[C, ia, ic] = unique(A)

```

```matlab
A = {'hi', 'good'; 'good', 'tell'; 'hi', 'bye'}
[C, ia, ic] = unique(A)

```

## See also

[sort](../data_analysis/sort.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.6.0   | initial version |

## Author

Allan CORNET
